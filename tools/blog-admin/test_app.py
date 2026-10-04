import io
from pathlib import Path
import tempfile
import time
import unittest
from unittest.mock import patch

from PIL import Image, ImageDraw, ImageFont
from pillow_heif import register_heif_opener

from app import article_title, create_app, normalize_image, prepare_ocr, recognize


def image_bytes(color="white"):
    output = io.BytesIO()
    Image.new("RGB", (300, 120), color).save(output, "PNG")
    output.seek(0)
    return output


class ManualTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.root = Path(self.directory.name)
        self.app = create_app(self.root, "test-token", ("vision", ["unused"]))
        self.app.testing = True
        self.client = self.app.test_client()
        self.headers = {"Authorization": "Bearer test-token"}

    def tearDown(self):
        self.directory.cleanup()

    def upload(self, name="咖啡机", images=None):
        return self.client.post("/api/manuals", headers=self.headers, data={"name": name, "images": images or [(image_bytes(), "first.png"), (image_bytes("black"), "second.png")]})

    def wait(self, response):
        self.assertEqual(response.status_code, 202, response.json)
        for _ in range(200):
            result = self.client.get("/api/jobs/" + response.json["id"], headers=self.headers).json
            if result["state"] != "processing":
                # Job state is published just before finally releases the busy lock.
                time.sleep(.02)
                return result
            time.sleep(.02)
        self.fail("Job timed out")

    def test_authentication_and_title_validation(self):
        self.assertEqual(self.client.get("/api/status").status_code, 401)
        self.assertEqual(self.client.post("/api/manuals").status_code, 401)
        self.assertEqual(self.client.get("/api/status", headers={"Authorization": "中文"}).status_code, 401)
        self.assertEqual(self.client.get("/").status_code, 200)
        for name in ["../逃逸", "", "a/b", "a\\b", "{{ x }}", "a\nname"]:
            with self.assertRaises(ValueError):
                article_title(name)
        self.assertEqual(article_title("咖啡机说明书"), "咖啡机说明书")

    def test_create_order_escape_and_duplicate(self):
        with patch("app.recognize", side_effect=["第一页 <script>alert(1)</script> {{< bad >}}", "第二页 电源 220V"]):
            result = self.wait(self.upload())
        self.assertEqual(result["state"], "done")
        article = self.root / "说明书" / "咖啡机说明书.md"
        text = article.read_text()
        self.assertIn('title: "咖啡机说明书"', text)
        self.assertIn("第二页 电源 220V", text)
        self.assertNotIn("<script>", text)
        self.assertNotIn("{{<", text)
        self.assertLess(text.index("第一页"), text.index("第二页"))
        self.assertIn("![第 1 页](./%E5%92%96%E5%95%A1%E6%9C%BA%E8%AF%B4%E6%98%8E%E4%B9%A6-", text)
        images = sorted(article.parent.glob("*.jpg"))
        self.assertEqual(len(images), 2)
        self.assertGreater(Image.open(images[0]).getpixel((0, 0))[0], 240)
        self.assertLess(Image.open(images[1]).getpixel((0, 0))[0], 10)
        self.assertTrue((article.parent / "_index.md").exists())
        self.assertEqual(self.upload().status_code, 409)
        self.assertEqual(article.read_text(), text)

    def test_invalid_image_does_not_save(self):
        response = self.upload(images=[(image_bytes(), "ok.jpg"), (io.BytesIO(b"not an image"), "evil.jpg")])
        self.assertEqual(response.status_code, 400)
        self.assertFalse((self.root / "说明书").exists())

    def test_no_images_and_count_limits(self):
        response = self.client.post("/api/manuals", headers=self.headers, data={"name": "测试"})
        self.assertEqual(response.status_code, 400)
        response = self.upload(images=[(image_bytes(), f"{i}.png") for i in range(31)])
        self.assertEqual(response.status_code, 400)

    def test_ocr_failure_does_not_save(self):
        with patch("app.recognize", side_effect=RuntimeError("识别失败")):
            result = self.wait(self.upload())
        self.assertEqual(result["state"], "error")
        self.assertFalse((self.root / "说明书").exists())

    def test_empty_ocr_warns_and_preserves_images(self):
        with patch("app.recognize", return_value=""):
            result = self.wait(self.upload())
        self.assertEqual(result["state"], "done")
        self.assertEqual(len(result["warnings"]), 2)
        self.assertEqual(len(list((self.root / "说明书").glob("*.jpg"))), 2)

    def test_exif_orientation_and_metadata_removed(self):
        image = Image.new("RGB", (100, 200), "white")
        exif = image.getexif()
        exif[274] = 6
        exif[270] = "private metadata"
        stream = io.BytesIO()
        image.save(stream, "JPEG", exif=exif)
        stream.seek(0)
        target = self.root / "rotated.jpg"
        normalize_image(stream, target)
        with Image.open(target) as saved:
            self.assertEqual(saved.size, (200, 100))
            self.assertFalse(saved.getexif())

    def test_heic_conversion(self):
        register_heif_opener()
        stream = io.BytesIO()
        Image.new("RGB", (128, 128), "white").save(stream, "HEIF")
        stream.seek(0)
        target = self.root / "heic.jpg"
        normalize_image(stream, target)
        with Image.open(target) as saved:
            self.assertEqual(saved.format, "JPEG")


class RealOCRTests(unittest.TestCase):
    def test_real_engine(self):
        engine, command = prepare_ocr("auto")
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / "sample.jpg"
            image = Image.new("RGB", (1500, 500), "white")
            candidates = ["/System/Library/Fonts/Supplemental/Arial.ttf", "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"]
            font_path = next((p for p in candidates if Path(p).exists()), None)
            self.assertIsNotNone(font_path, "Install a test font")
            font = ImageFont.truetype(font_path, 65)
            ImageDraw.Draw(image).text((70, 100), "COFFEE MACHINE MANUAL\nPower 220V Model ABC123", font=font, fill="black", spacing=30)
            image.save(target)
            text = recognize(target, engine, command)
            self.assertIn("220V", text)
            self.assertIn("ABC123", text)


if __name__ == "__main__":
    unittest.main()

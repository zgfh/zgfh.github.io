import Foundation
import Vision
import ImageIO

// Images have already been rotated according to EXIF and converted to JPEG.
do {
    guard CommandLine.arguments.count == 2 else {
        throw NSError(domain: "OCR", code: 1, userInfo: [NSLocalizedDescriptionKey: "Missing image path"])
    }
    let request = VNRecognizeTextRequest()
    request.recognitionLevel = .accurate
    request.recognitionLanguages = ["zh-Hans", "zh-Hant", "en-US"]
    request.usesLanguageCorrection = true
    let handler = VNImageRequestHandler(url: URL(fileURLWithPath: CommandLine.arguments[1]), options: [:])
    try handler.perform([request])
    let lines = (request.results ?? []).compactMap { $0.topCandidates(1).first?.string }
    print(lines.joined(separator: "\n"))
} catch {
    fputs("Vision OCR: \(error.localizedDescription)\n", stderr)
    exit(1)
}

'use strict';
const $ = id => document.getElementById(id);
let token = new URLSearchParams(location.hash.slice(1)).get('token') || sessionStorage.getItem('blog-admin-token') || '';
if (token) sessionStorage.setItem('blog-admin-token', token);
// Remove the access code from the address bar after importing it.
history.replaceState(null, '', location.pathname);
let photos = [], running = false, connected = false;
const pause = ms => new Promise(resolve => setTimeout(resolve, ms));
function error(message) { $('error').textContent = message; $('error').hidden = !message; }
function setBusy(value) {
  running = value;
  document.querySelectorAll('#form button, #form input, #back').forEach(el => el.disabled = value);
  $('submit').disabled = value || !connected;
  render();
}
async function api(path, options = {}) {
  const response = await fetch(path, {...options, headers: {...options.headers, Authorization: `Bearer ${token}`}});
  const data = await response.json();
  if (!response.ok) { const e = new Error(data.error || '请求失败'); e.status = response.status; throw e; }
  return data;
}
async function connect() {
  try {
    const data = await api('/api/status'); connected = true;
    $('auth').hidden = true;
    $('engine').textContent = `本地文字识别：${data.engine === 'vision' ? 'Apple Vision' : 'Tesseract'} · 中文 / 英文`;
    error(''); setBusy(running);
    const pending = sessionStorage.getItem('blog-admin-job');
    if (pending && !running) { showEditor(); poll(pending); }
  } catch (e) {
    connected = false; $('auth').hidden = false; $('engine').textContent = '请先连接后台'; setBusy(running);
    if (token) error(e.message);
  }
}
function showEditor() { $('home').hidden = true; $('editor').hidden = false; }
$('manual-mode').onclick = showEditor;
$('back').onclick = () => { $('editor').hidden = true; $('home').hidden = false; };
$('connect').onclick = () => { token = $('access-code').value.trim(); sessionStorage.setItem('blog-admin-token', token); connect(); };
$('name').oninput = () => {
  const name = $('name').value.trim();
  $('title-hint').textContent = `将保存为「${name ? (name.endsWith('说明书') ? name : name + '说明书') : '产品名称说明书'}.md」`;
};
$('camera-button').onclick = () => $('camera').click();
$('album-button').onclick = () => $('album').click();
function render() {
  $('count').textContent = `${photos.length} / 30`; $('empty').hidden = photos.length > 0;
  $('photos').replaceChildren();
  photos.forEach((photo, index) => {
    const li = document.createElement('li'); li.className = 'photo';
    const img = document.createElement('img'); img.className = 'preview'; img.src = photo.url; img.alt = `第 ${index + 1} 页（HEIC 无法预览时仍可上传）`;
    const label = document.createElement('div'); label.className = 'file-label'; label.textContent = `${index + 1}. ${photo.file.name}`;
    const actions = document.createElement('div'); actions.className = 'photo-actions';
    [['前移', -1], ['后移', 1], ['删除', 0]].forEach(([text, delta]) => {
      const button = document.createElement('button'); button.type = 'button'; button.textContent = text;
      button.setAttribute('aria-label', `第 ${index + 1} 页${text}`);
      button.disabled = running || (delta === -1 && index === 0) || (delta === 1 && index === photos.length - 1);
      button.onclick = () => {
        if (delta) [photos[index], photos[index + delta]] = [photos[index + delta], photos[index]];
        else { URL.revokeObjectURL(photos[index].url); photos.splice(index, 1); }
        render();
      };
      actions.append(button);
    });
    li.append(img, label, actions); $('photos').append(li);
  });
}
for (const id of ['camera', 'album']) $(id).onchange = event => {
  const added = [...event.target.files]; event.target.value = ''; error('');
  if (photos.length + added.length > 30) return error('最多添加 30 张照片。');
  if (added.some(file => file.size > 20 * 1024 * 1024)) return error('单张照片不能超过 20 MB。');
  if ([...photos.map(p => p.file), ...added].reduce((sum, f) => sum + f.size, 0) > 119 * 1024 * 1024) return error('照片总量过大，请分批创建说明书（总计小于 120 MB）。');
  photos.push(...added.map(file => ({file, url: URL.createObjectURL(file)}))); render();
};
async function poll(id) {
  setBusy(true); $('progress').hidden = false;
  let failures = 0;
  while (true) {
    try {
      const job = await api(`/api/jobs/${id}`); failures = 0;
      $('progress-text').textContent = job.message;
      if (job.state === 'done') {
        sessionStorage.removeItem('blog-admin-job'); $('progress').hidden = true; $('form').hidden = true;
        $('success').hidden = false; $('saved-path').textContent = job.path;
        $('warnings').textContent = job.warnings.join(' '); if (job.formatted_html) $('ocr-text').innerHTML = job.formatted_html;
        else $('ocr-text').textContent = job.text || '未识别出文字，请检查照片清晰度。';
        setBusy(false); return;
      }
      if (job.state === 'error') { sessionStorage.removeItem('blog-admin-job'); throw new Error(job.message); }
    } catch (e) {
      if (e instanceof TypeError && ++failures <= 10) {
        $('progress-text').textContent = '连接中断，正在重连；请勿重复提交…'; await pause(3000); continue;
      }
      if (e.status === 404) sessionStorage.removeItem('blog-admin-job');
      error(e.message + (sessionStorage.getItem('blog-admin-job') ? ' 请刷新页面恢复查询，先不要重复提交。' : ''));
      $('progress').hidden = true; setBusy(false); return;
    }
    await pause(1000);
  }
}
$('form').onsubmit = async event => {
  event.preventDefault(); error('');
  const pending = sessionStorage.getItem('blog-admin-job');
  if (pending) { await poll(pending); return; }
  if (!photos.length) return error('请至少添加一张说明书照片。');
  setBusy(true); $('progress').hidden = false; $('progress-text').textContent = '正在上传照片，请稍候…';
  const body = new FormData(); body.append('name', $('name').value.trim());
  photos.forEach(photo => body.append('images', photo.file));
  try {
    const job = await api('/api/manuals', {method: 'POST', body});
    sessionStorage.setItem('blog-admin-job', job.id); await poll(job.id);
  } catch (e) { error(e.message); $('progress').hidden = true; setBusy(false); }
};
$('another').onclick = () => {
  photos.forEach(p => URL.revokeObjectURL(p.url)); photos = []; render();
  $('form').reset(); $('name').oninput(); $('form').hidden = false; $('success').hidden = true; error('');
};
window.addEventListener('beforeunload', event => { if (running) { event.preventDefault(); event.returnValue = ''; } });
connect();

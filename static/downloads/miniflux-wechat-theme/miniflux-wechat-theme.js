/*
 * Miniflux WeChat subscription-style progressive enhancement.
 * Verified against Miniflux v2.3.5 DOM templates.
 */

const WX_CARD_VERSION = "2026-11-23.5";
const CARD_SELECTOR = ".items > article.entry-item[data-id]";
const CACHE_PREFIX = `miniflux-wx-card:${WX_CARD_VERSION}:`;
const MAX_CONCURRENCY = 3;
const SUMMARY_LIMIT = 100;
const SWIPE_WIDTH = 96;
const SWIPE_THRESHOLD = 42;

const queue = [];
let activeRequests = 0;
let openSwipeWrap = null;

function normalizeText(value) {
  return (value || "").replace(/\s+/g, " ").trim();
}

function truncateText(value, limit) {
  const characters = Array.from(value);
  return characters.length > limit
    ? `${characters.slice(0, limit).join("")}…`
    : value;
}

function entryContentURL(entryID) {
  const statusURL = document.body?.dataset.entriesStatusUrl || "/entry/status";
  const suffix = "/entry/status";
  const basePath = statusURL.endsWith(suffix)
    ? statusURL.slice(0, -suffix.length)
    : "";
  return `${basePath}/history/entry/${encodeURIComponent(entryID)}`;
}

function validImageURL(rawURL, responseURL) {
  if (!rawURL) return "";

  try {
    const url = new URL(rawURL, responseURL);
    return url.protocol === "http:" || url.protocol === "https:"
      ? url.href
      : "";
  } catch {
    return "";
  }
}

function findPreviewImage(content, responseURL) {
  for (const image of content.querySelectorAll("img")) {
    const width = Number.parseInt(image.getAttribute("width") || "0", 10);
    const height = Number.parseInt(image.getAttribute("height") || "0", 10);

    if ((width > 0 && width < 80) || (height > 0 && height < 60)) continue;

    const rawURL =
      image.getAttribute("src") ||
      image.getAttribute("data-src") ||
      image.getAttribute("data-original");
    const imageURL = validImageURL(rawURL, responseURL);

    if (imageURL) return imageURL;
  }

  return "";
}

function extractPreview(html, responseURL, title) {
  const parsed = new DOMParser().parseFromString(html, "text/html");
  const content = parsed.querySelector(".entry-content");
  if (!content) return { summary: "", imageURL: "" };

  const imageURL = findPreviewImage(content, responseURL);
  const textContent = content.cloneNode(true);
  textContent
    .querySelectorAll("script, style, template, noscript, svg, audio, video")
    .forEach((node) => node.remove());

  let summary = normalizeText(textContent.textContent);
  const normalizedTitle = normalizeText(title);
  if (normalizedTitle && summary.startsWith(normalizedTitle)) {
    summary = normalizeText(summary.slice(normalizedTitle.length));
  }
  if (summary === normalizedTitle) summary = "";

  return {
    summary: truncateText(summary, SUMMARY_LIMIT),
    imageURL,
  };
}

function readCache(entryID) {
  try {
    const value = sessionStorage.getItem(`${CACHE_PREFIX}${entryID}`);
    return value ? JSON.parse(value) : null;
  } catch {
    return null;
  }
}

function writeCache(entryID, preview) {
  try {
    sessionStorage.setItem(`${CACHE_PREFIX}${entryID}`, JSON.stringify(preview));
  } catch {
    // Storage can be unavailable or full; the card still works without cache.
  }
}

function createPlaceholder() {
  const placeholder = document.createElement("div");
  placeholder.className = "wx-thumbnail wx-placeholder";
  placeholder.setAttribute("aria-hidden", "true");
  return placeholder;
}

function renderPreview(card, preview) {
  const text = card.querySelector(":scope .wx-text");
  const meta = text?.querySelector(":scope > .item-meta");
  const media = card.querySelector(":scope .wx-media");
  if (!text || !meta || !media) return;

  if (preview.summary && !text.querySelector(":scope > .wx-summary")) {
    const summary = document.createElement("p");
    summary.className = "wx-summary";
    summary.dir = "auto";
    summary.textContent = preview.summary;
    text.insertBefore(summary, meta);
  }

  if (preview.imageURL) {
    const image = document.createElement("img");
    image.className = "wx-thumbnail";
    image.alt = "";
    image.loading = "lazy";
    image.decoding = "async";
    image.referrerPolicy = "no-referrer";
    image.addEventListener(
      "error",
      () => media.replaceChildren(createPlaceholder()),
      { once: true },
    );
    image.src = preview.imageURL;
    media.replaceChildren(image);
  }
}

function findNativeReadControl(card) {
  const control = card.querySelector(
    ':is(a, button)[data-toggle-status][data-value]',
  );
  return control instanceof HTMLElement ? control : null;
}

function isCardRead(card, control = findNativeReadControl(card)) {
  return card.classList.contains("item-status-read") ||
    control?.dataset.value === "read";
}

function setSwipeOpen(wrap, shouldOpen) {
  const action = wrap.querySelector(":scope > .wx-swipe-action");
  wrap.classList.toggle("wx-open", shouldOpen);
  if (action) {
    action.tabIndex = shouldOpen ? 0 : -1;
    action.setAttribute("aria-hidden", shouldOpen ? "false" : "true");
  }

  if (shouldOpen) {
    if (openSwipeWrap && openSwipeWrap !== wrap) setSwipeOpen(openSwipeWrap, false);
    openSwipeWrap = wrap;
  } else if (openSwipeWrap === wrap) {
    openSwipeWrap = null;
  }
}

function installSwipeAction(card) {
  if (card.dataset.wxSwipeEnhanced === "true") return;

  // Miniflux's built-in entry_swipe toggles status on either swipe direction.
  // Do not install a second gesture handler on stale pages where it is active.
  if (card.classList.contains("entry-swipe")) return;

  const nativeControl = findNativeReadControl(card);
  const parent = card.parentElement;
  if (!nativeControl || !parent?.classList.contains("items")) return;

  const wrap = document.createElement("div");
  wrap.className = "wx-swipe-wrap";

  const action = document.createElement("button");
  action.type = "button";
  action.className = "wx-swipe-action";
  action.tabIndex = -1;
  action.setAttribute("aria-hidden", "true");

  const updateActionLabel = () => {
    const read = isCardRead(card, nativeControl);
    action.textContent = read ? "已读" : "标为已读";
    action.setAttribute("aria-label", read ? "文章已读" : "标为已读");
  };
  updateActionLabel();

  parent.insertBefore(wrap, card);
  wrap.append(action, card);
  card.classList.add("wx-swipe-card");
  card.dataset.wxSwipeEnhanced = "true";

  let startX = 0;
  let startY = 0;
  let dx = 0;
  let axis = "undecided";
  let tracking = false;
  let wasOpen = false;
  let suppressClickUntil = 0;

  const resetDrag = () => {
    tracking = false;
    axis = "undecided";
    wrap.classList.remove("wx-dragging");
    card.style.transform = "";
  };

  card.addEventListener(
    "touchstart",
    (event) => {
      if (event.touches.length !== 1) return;
      const touch = event.touches[0];
      startX = touch.clientX;
      startY = touch.clientY;
      dx = 0;
      axis = "undecided";
      tracking = true;
      wasOpen = wrap.classList.contains("wx-open");
    },
    { passive: true },
  );

  card.addEventListener(
    "touchmove",
    (event) => {
      if (!tracking || event.touches.length !== 1) return;
      const touch = event.touches[0];
      dx = touch.clientX - startX;
      const dy = touch.clientY - startY;
      const absX = Math.abs(dx);
      const absY = Math.abs(dy);

      if (axis === "undecided") {
        if (Math.max(absX, absY) < 10) return;
        if (absY >= absX) {
          axis = "vertical";
          return;
        }
        axis = "horizontal";
        if (!wasOpen && openSwipeWrap && openSwipeWrap !== wrap) {
          setSwipeOpen(openSwipeWrap, false);
        }
      }

      if (axis !== "horizontal") return;
      event.preventDefault();
      wrap.classList.add("wx-dragging");

      const origin = wasOpen ? -SWIPE_WIDTH : 0;
      const translateX = Math.max(-SWIPE_WIDTH, Math.min(0, origin + dx));
      card.style.transform = `translateX(${translateX}px)`;
    },
    { passive: false },
  );

  card.addEventListener(
    "touchend",
    () => {
      if (!tracking) return;
      const horizontal = axis === "horizontal";
      resetDrag();
      if (!horizontal) return;

      suppressClickUntil = Date.now() + 350;
      const shouldOpen = wasOpen
        ? dx <= SWIPE_THRESHOLD
        : dx <= -SWIPE_THRESHOLD;
      setSwipeOpen(wrap, shouldOpen);
    },
    { passive: true },
  );

  card.addEventListener("touchcancel", resetDrag, { passive: true });

  card.addEventListener(
    "click",
    (event) => {
      if (Date.now() < suppressClickUntil) {
        event.preventDefault();
        event.stopPropagation();
      }
    },
    true,
  );

  const statusObserver = new MutationObserver(updateActionLabel);
  statusObserver.observe(card, {
    attributes: true,
    subtree: true,
    attributeFilter: ["class", "data-value"],
  });

  action.addEventListener("click", () => {
    if (action.disabled) return;
    if (isCardRead(card, nativeControl)) {
      setSwipeOpen(wrap, false);
      return;
    }

    action.disabled = true;
    action.textContent = "处理中…";
    let settled = false;

    const finish = (success) => {
      if (settled) return;
      settled = true;
      confirmationObserver.disconnect();
      clearTimeout(timeoutID);
      action.disabled = false;
      updateActionLabel();
      if (success) setSwipeOpen(wrap, false);
    };

    const confirmationObserver = new MutationObserver(() => {
      if (isCardRead(card, nativeControl)) finish(true);
    });
    confirmationObserver.observe(card, {
      attributes: true,
      subtree: true,
      attributeFilter: ["class", "data-value"],
    });

    const timeoutID = window.setTimeout(() => finish(false), 8000);
    nativeControl.click();
  });
}

async function loadPreview(card) {
  const entryID = card.dataset.id;
  if (!entryID || card.dataset.wxLoaded === "true") return;

  card.dataset.wxLoaded = "true";
  card.classList.add("wx-loading");

  const cached = readCache(entryID);
  if (cached) {
    renderPreview(card, cached);
    card.classList.remove("wx-loading");
    return;
  }

  try {
    const response = await fetch(entryContentURL(entryID), {
      method: "GET",
      credentials: "same-origin",
      cache: "no-store",
      headers: { Accept: "text/html" },
    });
    if (!response.ok) throw new Error(`Preview request failed: ${response.status}`);

    const title = card.querySelector(".item-title a")?.textContent || "";
    const preview = extractPreview(await response.text(), response.url, title);
    writeCache(entryID, preview);
    renderPreview(card, preview);
  } catch {
    // Keep the CSS-only placeholder. List reading remains fully functional.
  } finally {
    card.classList.remove("wx-loading");
  }
}

function pumpQueue() {
  while (activeRequests < MAX_CONCURRENCY && queue.length > 0) {
    const card = queue.shift();
    if (!card?.isConnected) continue;

    activeRequests += 1;
    loadPreview(card).finally(() => {
      activeRequests -= 1;
      pumpQueue();
    });
  }
}

function schedulePreview(card) {
  if (card.dataset.wxQueued === "true") return;
  card.dataset.wxQueued = "true";
  queue.push(card);
  pumpQueue();
}

const visibilityObserver = "IntersectionObserver" in window
  ? new IntersectionObserver(
      (entries, observer) => {
        for (const entry of entries) {
          if (!entry.isIntersecting) continue;
          observer.unobserve(entry.target);
          schedulePreview(entry.target);
        }
      },
      { rootMargin: "600px 0px" },
    )
  : null;

function enhanceCard(card) {
  if (!(card instanceof HTMLElement) || card.dataset.wxEnhanced === "true") return;

  const header = card.querySelector(":scope > .item-header");
  const meta = card.querySelector(":scope > .item-meta");
  if (!header || !meta || !card.querySelector(".item-title a")) return;

  const row = document.createElement("div");
  row.className = "wx-content-row";

  const text = document.createElement("div");
  text.className = "wx-text";

  const media = document.createElement("div");
  media.className = "wx-media";
  media.append(createPlaceholder());

  card.insertBefore(row, header);
  text.append(header, meta);
  row.append(text, media);
  card.classList.add("wx-card");
  card.dataset.wxEnhanced = "true";
  installSwipeAction(card);

  if (visibilityObserver) {
    visibilityObserver.observe(card);
  } else {
    schedulePreview(card);
  }
}

function enhanceUnreadEmptyState() {
  const activeUnreadLink = document.querySelector(
    '#header-menu li.active > a[data-page="unread"]',
  );
  const historyLink = document.querySelector(
    '#header-menu a[data-page="history"]',
  );
  const main = document.querySelector("#main");

  if (!(activeUnreadLink instanceof HTMLAnchorElement) ||
      !(historyLink instanceof HTMLAnchorElement) ||
      !(main instanceof HTMLElement)) return;

  // The unread template renders this exact direct-child alert only when
  // .entries is empty. Requiring the active unread menu prevents matching
  // alerts on feeds, categories, search, settings, or error pages.
  const emptyAlert = main.querySelector(":scope > p[role='alert'].alert");
  if (!(emptyAlert instanceof HTMLParagraphElement) ||
      main.querySelector(".items .entry-item") ||
      main.querySelector(":scope > .wx-empty-state")) return;

  const state = document.createElement("section");
  state.className = "wx-empty-state";
  state.setAttribute("role", "status");
  state.setAttribute("aria-labelledby", "wx-empty-title");

  const icon = document.createElement("div");
  icon.className = "wx-empty-icon";
  icon.setAttribute("aria-hidden", "true");
  icon.textContent = "✓✓";

  const title = document.createElement("h2");
  title.id = "wx-empty-title";
  title.className = "wx-empty-title";
  title.textContent = "全部读完了";

  const description = document.createElement("p");
  description.className = "wx-empty-description";
  description.textContent = "暂时没有未读文章";

  const hint = document.createElement("p");
  hint.className = "wx-empty-hint";
  hint.textContent = "新的订阅内容会出现在这里";

  const link = document.createElement("a");
  link.className = "wx-empty-link";
  link.href = historyLink.href;
  link.textContent = "查看全部文章";

  state.append(icon, title, description, hint, link);
  emptyAlert.replaceWith(state);
}

function createSearchEmptyState(titleText, descriptionText, isResultState) {
  const state = document.createElement("section");
  state.className = "wx-search-empty";
  state.dataset.state = isResultState ? "no-results" : "initial";
  state.setAttribute("role", isResultState ? "status" : "region");
  state.setAttribute("aria-labelledby", "wx-search-empty-title");

  const icon = document.createElement("div");
  icon.className = "wx-search-empty-icon";
  icon.setAttribute("aria-hidden", "true");
  icon.textContent = "⌕";

  const title = document.createElement("h2");
  title.id = "wx-search-empty-title";
  title.className = "wx-search-empty-title";
  title.textContent = titleText;

  const description = document.createElement("p");
  description.className = "wx-search-empty-description";
  description.textContent = descriptionText;

  state.append(icon, title, description);
  return state;
}

function enhanceSearchPage() {
  const activeSearchLink = document.querySelector(
    '#header-menu li.active > a[data-page="search"]',
  );
  const main = document.querySelector("#main");
  const searchElement = main?.querySelector(":scope > search[role='search']");
  const form = searchElement?.querySelector(":scope > form.search-form");
  const input = form?.querySelector(
    ":scope .search-input-row > input#search-input[type='search'][name='q']",
  );
  const submit = form?.querySelector(
    ":scope .search-input-row > button.button-primary[type='submit']",
  );
  const filter = form?.querySelector(
    ":scope > label.search-filter:has(input[type='checkbox'][name='unread'])",
  );

  if (!(activeSearchLink instanceof HTMLAnchorElement) ||
      !(main instanceof HTMLElement) ||
      !(searchElement instanceof HTMLElement) ||
      !(form instanceof HTMLFormElement) ||
      !(input instanceof HTMLInputElement) ||
      !(submit instanceof HTMLButtonElement) ||
      !(filter instanceof HTMLLabelElement)) return;

  document.body.classList.add("wx-search-page");
  form.classList.add("wx-search-form");
  input.classList.add("wx-search-input");
  input.placeholder = "搜索模型、厂商或关键词…";
  submit.classList.add("wx-search-submit");
  filter.classList.add("wx-search-filter");

  const searchParams = new URL(window.location.href).searchParams;
  const query = (searchParams.get("q") || "").trim();
  const hasResults = Boolean(main.querySelector(".items .entry-item[data-id]"));
  const nativeNoResults = main.querySelector(
    ":scope > p[role='alert'].alert.alert-info",
  );
  if (hasResults || main.querySelector(":scope > .wx-search-empty")) return;

  if (query === "") {
    const pageTitle = document.querySelector("#page-header-title");
    if (pageTitle) pageTitle.textContent = "搜索文章";
    searchElement.after(createSearchEmptyState(
      "搜索你的订阅文章",
      "输入模型名称、厂商或关键词",
      false,
    ));
  } else if (nativeNoResults instanceof HTMLParagraphElement) {
    nativeNoResults.replaceWith(createSearchEmptyState(
      "没有找到相关文章",
      "尝试更换关键词后重新搜索",
      true,
    ));
  }
}

function enhanceListPagination() {
  const items = document.querySelectorAll(".items .entry-item[data-id]");
  const bottom = document.querySelector(".pagination-bottom");
  const pagination = bottom?.querySelector(":scope > .pagination");
  if (items.length === 0 || !(bottom instanceof HTMLElement) ||
      !(pagination instanceof HTMLElement) ||
      bottom.dataset.wxPaginationEnhanced === "true") return;

  bottom.dataset.wxPaginationEnhanced = "true";
  pagination.classList.add("wx-pagination-simple");

  // Miniflux renders active previous/next controls as links and unavailable
  // controls as .disabled divs. No active link in either direction is the
  // server's authoritative single-page state; item count is used only then.
  const hasPrevious = Boolean(
    pagination.querySelector(".pagination-prev a[data-page='previous']"),
  );
  const hasNext = Boolean(
    pagination.querySelector(".pagination-next a[data-page='next']"),
  );
  if (hasPrevious || hasNext) return;

  bottom.classList.add("wx-pagination-single");
  const complete = document.createElement("p");
  complete.className = "wx-pagination-complete";
  complete.setAttribute("role", "status");
  complete.textContent = `已显示全部 ${items.length} 篇文章`;
  bottom.append(complete);
}

function scan(root = document) {
  if (root instanceof Element && root.matches(CARD_SELECTOR)) enhanceCard(root);
  root.querySelectorAll?.(CARD_SELECTOR).forEach(enhanceCard);
}

enhanceSearchPage();
enhanceUnreadEmptyState();
enhanceListPagination();
scan();

const mutationObserver = new MutationObserver((mutations) => {
  for (const mutation of mutations) {
    mutation.addedNodes.forEach((node) => {
      if (node instanceof Element) scan(node);
    });
  }
});

mutationObserver.observe(document.body, { childList: true, subtree: true });

document.addEventListener(
  "click",
  (event) => {
    if (openSwipeWrap && !openSwipeWrap.contains(event.target)) {
      setSwipeOpen(openSwipeWrap, false);
    }
  },
  true,
);


# Web App Manifest — Complete Attribute Reference

## Core Identity

### `name` (string, required)
Full app name displayed on splash screens, OS launchers, and install prompts.

### `short_name` (string, recommended)
Abbreviated name for constrained spaces (home screen labels, taskbar). Keep under 12 characters.

### `description` (string)
Human-readable explanation of the app's purpose. Enhances the install dialog on supported browsers when combined with `screenshots`.

### `id` (string)
Unique identifier for this app on the same origin. Decouples identity from `start_url` so the start URL can change without losing installed state. Recommended: set to `"/"` or a stable path.

### `start_url` (string, required for installability)
URL loaded when the user launches the installed app. Use `"/?source=pwa"` to distinguish installs in analytics. Must be within `scope`.

### `scope` (string)
Navigation boundary. Links outside scope open in the system browser, not the app window. Defaults to the directory of the manifest file. Set to `"/"` unless the app lives under a subpath.

### `lang` (string)
BCP 47 language tag (e.g., `"en"`, `"pt-BR"`). Describes the language of `name`, `short_name`, and `description`.

### `dir` (string)
Text direction: `"ltr"`, `"rtl"`, or `"auto"`.

---

## Display & Appearance

### `display` (string, required for installability)
How the OS renders the app window.

| Value | Behavior |
|-------|----------|
| `standalone` | App-like window, no browser chrome. **Recommended default.** |
| `fullscreen` | No OS UI at all (games, immersive media). |
| `minimal-ui` | Standalone with minimal navigation controls. |
| `browser` | Standard browser tab. Not installable. |

### `display_override` (array of strings, experimental)
Ordered fallback chain of preferred display modes. The browser uses the first supported value, then falls back to `display`.

Additional modes beyond `display`:
- `window-controls-overlay` — desktop only; web content fills the entire title bar area, OS window buttons rendered as an overlay.
- `tabbed` — multiple in-app tabs within a single OS window.

```json
"display_override": ["window-controls-overlay", "standalone"],
"display": "standalone"
```

### `orientation` (string)
Preferred screen orientation. Relevant for mobile. Values: `any`, `natural`, `landscape`, `landscape-primary`, `landscape-secondary`, `portrait`, `portrait-primary`, `portrait-secondary`.

### `theme_color` (string)
Default color for OS chrome (title bar, status bar). Must be a hex value or CSS named color. No transparency, no `rgba()`, no CSS variables.

### `background_color` (string)
Splash screen background shown before stylesheets load. Same color restrictions as `theme_color`. Should match the app's actual background for a seamless launch.

---

## Icons

### `icons` (array of objects, required for installability)
Each object:

| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `src` | string | yes | Path to image file |
| `sizes` | string | yes | Space-separated sizes, e.g., `"192x192"` |
| `type` | string | recommended | MIME type, e.g., `"image/png"` |
| `purpose` | string | no | `"any"` (default), `"maskable"`, or `"monochrome"` |

**Minimum set for installability:**
```json
[
  { "src": "/icons/icon-192.png", "sizes": "192x192", "type": "image/png" },
  { "src": "/icons/icon-512.png", "sizes": "512x512", "type": "image/png" },
  { "src": "/icons/icon-512-maskable.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
]
```

**Maskable icons:** Design with a safe zone — a centered circle with 40% of the icon's width as the radius. Content outside this zone may be clipped on Android 8+. Use https://maskable.app to test.

**Best practices:**
- Opaque, square PNGs. No transparency (causes platform-specific background fill).
- Do NOT combine `"any maskable"` in a single icon's `purpose` — provide separate entries.
- For comprehensive coverage, also include 72, 96, 128, 144, 152, 384 sizes.

---

## Screenshots

### `screenshots` (array of objects)
Enhance the install dialog by showing users what the app looks like.

| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `src` | string | yes | Path to screenshot |
| `sizes` | string | no | e.g., `"1280x720"` |
| `type` | string | no | MIME type |
| `form_factor` | string | no | `"wide"` (desktop) or `"narrow"` (mobile) |
| `label` | string | no | Accessible alt text. Recommended. |
| `platform` | string | no | `android`, `ios`, `windows`, `macos`, `chromeos`, etc. |

```json
"screenshots": [
  {
    "src": "/screenshots/desktop.webp",
    "sizes": "1280x720",
    "type": "image/webp",
    "form_factor": "wide",
    "label": "Dashboard view on desktop"
  },
  {
    "src": "/screenshots/mobile.webp",
    "sizes": "750x1334",
    "type": "image/webp",
    "form_factor": "narrow",
    "label": "Dashboard view on mobile"
  }
]
```

---

## Shortcuts

### `shortcuts` (array of objects)
Quick actions shown on long-press / right-click of the app icon.

| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `name` | string | yes | Display name |
| `url` | string | yes | Must be within `scope` |
| `short_name` | string | no | Abbreviated name |
| `description` | string | no | For assistive tech |
| `icons` | array | no | Same format as top-level `icons` |

Order by importance — the OS may truncate the list. Browsers render in manifest order.

```json
"shortcuts": [
  {
    "name": "Compose New",
    "short_name": "Compose",
    "url": "/compose?source=shortcut",
    "icons": [{ "src": "/icons/shortcut-compose.png", "sizes": "192x192" }]
  }
]
```

---

## Share Target

### `share_target` (object, experimental)
Register as an OS-level share target so the app appears in the system share sheet.

| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `action` | string | yes | URL endpoint receiving shared data |
| `method` | string | no | `"GET"` (default) or `"POST"` |
| `enctype` | string | no | `"multipart/form-data"` (required for file sharing) |
| `params` | object | yes | Maps share fields to query/form params |

`params` properties: `title`, `text`, `url` (all strings), `files` (array of `{ name, accept }`).

**Text/URL sharing (GET):**
```json
"share_target": {
  "action": "/share",
  "params": { "title": "title", "text": "text", "url": "url" }
}
```

**File sharing (POST):**
```json
"share_target": {
  "action": "/share",
  "method": "POST",
  "enctype": "multipart/form-data",
  "params": {
    "title": "title",
    "text": "text",
    "url": "url",
    "files": [{ "name": "media", "accept": ["image/*", "video/*"] }]
  }
}
```

The app must handle the incoming data server-side or via a service worker `fetch` event. Always validate shared data.

---

## File Handlers

### `file_handlers` (array of objects, experimental)
Register the app to open specific file types from the OS.

| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `action` | string | yes | URL navigated to when handling a file. Must be within `scope`. |
| `accept` | object | yes | Keys: MIME types. Values: arrays of file extensions. |

```json
"file_handlers": [
  {
    "action": "/open-file",
    "accept": {
      "text/plain": [".txt", ".md"],
      "application/json": [".json"]
    }
  }
]
```

The app must consume files via `window.launchQueue`:
```js
if ("launchQueue" in window) {
  window.launchQueue.setConsumer((params) => {
    for (const file of params.files) {
      const blob = await file.getFile();
      // process blob
    }
  });
}
```

---

## Protocol Handlers

### `protocol_handlers` (array of objects, experimental)
Register the app to handle custom URL schemes.

| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `protocol` | string | yes | Scheme name. Custom protocols must use `web+` prefix. |
| `url` | string | yes | URL with `%s` placeholder for the incoming URL. Must be within scope. |

```json
"protocol_handlers": [
  { "protocol": "web+myapp", "url": "/handle?url=%s" }
]
```

---

## Launch Behavior

### `launch_handler` (object, experimental)
Controls what happens when the app is launched while already running.

`client_mode` values:
| Value | Behavior |
|-------|----------|
| `auto` | Browser decides (default) |
| `focus-existing` | Focus existing window, don't navigate |
| `navigate-existing` | Focus existing window and navigate to new URL |
| `navigate-new` | Always open a new window |

```json
"launch_handler": { "client_mode": "focus-existing" }
```

Can be an array for fallback: `"client_mode": ["focus-existing", "auto"]`.

---

## Related Applications

### `related_applications` (array of objects, experimental)
Cross-promote native apps.

Each object: `{ "platform": "play" | "itunes" | "windows", "url": "...", "id": "..." }`

### `prefer_related_applications` (boolean, experimental)
When `true`, browsers may prompt users to install the native app instead.

---

## Metadata

### `categories` (array of strings)
Lowercase categories for store listings. W3C known values include: `books`, `business`, `education`, `entertainment`, `finance`, `fitness`, `food`, `games`, `government`, `health`, `kids`, `lifestyle`, `magazines`, `medical`, `music`, `navigation`, `news`, `personalization`, `photo`, `politics`, `productivity`, `security`, `shopping`, `social`, `sports`, `travel`, `utilities`, `weather`.

### `iarc_rating_id` (string)
International Age Rating Coalition certification code.

---

## Browser Support Notes

- **Baseline (widely supported):** `name`, `short_name`, `description`, `start_url`, `display`, `scope`, `icons`, `theme_color`, `background_color`, `screenshots`, `shortcuts`, `id`, `orientation`, `categories`
- **Experimental (Chromium only):** `share_target`, `file_handlers`, `protocol_handlers`, `launch_handler`, `display_override`, `related_applications`, `prefer_related_applications`
- Unsupported members are silently ignored — they don't break the manifest.

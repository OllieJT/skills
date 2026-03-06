---
name: web-app-manifest
description: Generate a web app manifest (manifest.webmanifest) for any web application by asking business-level questions to determine relevant native-like capabilities. Covers installability, sharing, offline, file handling, shortcuts, and all manifest attributes. Use when user wants to create a manifest, add install-to-homescreen, make a PWA, or add native-like features to a web app.
---

# Web App Manifest Generator

Do NOT ask users which manifest attributes they want. Instead, ask business-level questions to derive the right configuration. This is a modular capabilities approach — not a monolithic "PWA checklist."

## Process

### 1. Gather core identity (always required)

Ask the user for:
- **App name** and **short name** (under 12 chars for OS constraints)
- **One-line description** of what the app does
- **Primary brand color** (used for theme_color and background_color)
- **App language and text direction** (default: `en`, `ltr`)

### 2. Ask capability questions

Ask these questions in order. Frame them as business needs, not technical attributes.

| # | Question | Determines |
|---|----------|------------|
| 1 | "Can users install this app on their phone or desktop?" | `display`, `scope`, `id`, `screenshots`, `categories` |
| 2 | "Which devices matter most — mobile, desktop, or both?" | `orientation`, `screenshots.form_factor`, `display_override` |
| 3 | "Should your app receive content shared from other apps (text, URLs, files)?" | `share_target` |
| 4 | "Do users need quick-action shortcuts from the app icon (e.g., 'New message', 'Search')?" | `shortcuts` |
| 5 | "Should your app open specific file types from the OS?" | `file_handlers` |
| 6 | "Should your app handle custom URL schemes (e.g., `myapp://`)?" | `protocol_handlers` |
| 7 | "Do you have a native app you'd like to cross-promote?" | `related_applications`, `prefer_related_applications` |
| 8 | "When users re-launch the app while it's already open, should it reuse the existing window or open a new one?" | `launch_handler` |

Skip questions that are clearly irrelevant based on prior answers (e.g., skip orientation if desktop-only; skip share_target for a static docs site).

### 3. Generate the manifest

Build `manifest.webmanifest` using the decisions from steps 1-2. See [REFERENCE.md](REFERENCE.md) for every attribute's spec, accepted values, and constraints.

**Always include:** `name`, `short_name`, `description`, `start_url`, `display`, `scope`, `id`, `background_color`, `theme_color`, `icons`

**Conditionally include** based on answers: all other attributes per the mapping in step 2.

### 4. Add the HTML link tag

Instruct the user to add to every page's `<head>`:
```html
<link rel="manifest" href="/manifest.webmanifest" />
```
If the manifest requires auth: add `crossorigin="use-credentials"`.

### 5. Produce asset checklist

After generating the manifest, output a TODO checklist of assets the user must provide:

**Always required:**
- [ ] `icons/icon-192.png` — 192x192, opaque, square PNG
- [ ] `icons/icon-512.png` — 512x512, opaque, square PNG
- [ ] `icons/icon-512-maskable.png` — 512x512, maskable (safe zone: centered circle, 40% radius)

**If installable + mobile:**
- [ ] `screenshots/mobile.png` — narrow form factor (e.g., 750x1334)

**If installable + desktop:**
- [ ] `screenshots/desktop.png` — wide form factor (e.g., 1280x720)

**If shortcuts are enabled:**
- [ ] One 192x192 icon per shortcut

List exact file paths and dimensions so the manifest references work before assets exist.

## File placement

- Place `manifest.webmanifest` in the project's public/static root
- Place icons under `icons/` and screenshots under `screenshots/` relative to the public root
- Detect the framework (Next.js `public/`, Vite `public/`, etc.) and adjust paths accordingly

## Key constraints

- Use `.webmanifest` extension (serves `application/manifest+json`)
- Icons must be opaque square PNGs — no transparency
- `start_url` should include a source parameter for analytics: `/?source=pwa`
- `scope` defaults to `/` — only narrow it if the app lives under a subpath
- `short_name` must be under 12 characters
- All colors must be hex or named CSS colors — no `rgba()`, gradients, or CSS variables

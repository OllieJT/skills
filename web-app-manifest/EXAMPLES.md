# Web App Manifest — Example Configurations

## Minimal installable app

For a simple web app that just needs to be installable.

```json
{
  "name": "Acme Dashboard",
  "short_name": "Acme",
  "description": "Real-time analytics for your Acme account",
  "id": "/",
  "start_url": "/?source=pwa",
  "scope": "/",
  "display": "standalone",
  "background_color": "#ffffff",
  "theme_color": "#0066ff",
  "icons": [
    { "src": "/icons/icon-192.png", "sizes": "192x192", "type": "image/png" },
    { "src": "/icons/icon-512.png", "sizes": "512x512", "type": "image/png" },
    { "src": "/icons/icon-512-maskable.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
  ]
}
```

---

## Mobile-first app with screenshots

For an app where mobile is the primary modality and you want a rich install dialog.

```json
{
  "name": "FitTrack Workouts",
  "short_name": "FitTrack",
  "description": "Track workouts, set goals, and monitor progress",
  "id": "/",
  "start_url": "/?source=pwa",
  "scope": "/",
  "display": "standalone",
  "orientation": "portrait-primary",
  "background_color": "#1a1a2e",
  "theme_color": "#e94560",
  "lang": "en",
  "dir": "ltr",
  "categories": ["fitness", "health"],
  "icons": [
    { "src": "/icons/icon-192.png", "sizes": "192x192", "type": "image/png" },
    { "src": "/icons/icon-512.png", "sizes": "512x512", "type": "image/png" },
    { "src": "/icons/icon-512-maskable.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
  ],
  "screenshots": [
    {
      "src": "/screenshots/mobile-dashboard.webp",
      "sizes": "750x1334",
      "type": "image/webp",
      "form_factor": "narrow",
      "label": "Workout dashboard showing daily progress"
    },
    {
      "src": "/screenshots/mobile-workout.webp",
      "sizes": "750x1334",
      "type": "image/webp",
      "form_factor": "narrow",
      "label": "Active workout tracking screen"
    }
  ]
}
```

---

## Productivity app with shortcuts and sharing

For a productivity tool with quick actions and share-target support.

```json
{
  "name": "QuickNote",
  "short_name": "QuickNote",
  "description": "Capture ideas instantly with rich text notes",
  "id": "/",
  "start_url": "/?source=pwa",
  "scope": "/",
  "display": "standalone",
  "background_color": "#fefefe",
  "theme_color": "#2d3436",
  "lang": "en",
  "categories": ["productivity", "utilities"],
  "icons": [
    { "src": "/icons/icon-192.png", "sizes": "192x192", "type": "image/png" },
    { "src": "/icons/icon-512.png", "sizes": "512x512", "type": "image/png" },
    { "src": "/icons/icon-512-maskable.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
  ],
  "screenshots": [
    {
      "src": "/screenshots/desktop.webp",
      "sizes": "1280x720",
      "type": "image/webp",
      "form_factor": "wide",
      "label": "Note editor with sidebar navigation"
    },
    {
      "src": "/screenshots/mobile.webp",
      "sizes": "750x1334",
      "type": "image/webp",
      "form_factor": "narrow",
      "label": "Note list on mobile"
    }
  ],
  "shortcuts": [
    {
      "name": "New Note",
      "short_name": "New",
      "description": "Create a new note",
      "url": "/new?source=shortcut",
      "icons": [{ "src": "/icons/shortcut-new.png", "sizes": "192x192" }]
    },
    {
      "name": "Search Notes",
      "short_name": "Search",
      "description": "Search all notes",
      "url": "/search?source=shortcut",
      "icons": [{ "src": "/icons/shortcut-search.png", "sizes": "192x192" }]
    }
  ],
  "share_target": {
    "action": "/share",
    "method": "POST",
    "enctype": "multipart/form-data",
    "params": {
      "title": "title",
      "text": "text",
      "url": "url"
    }
  },
  "launch_handler": {
    "client_mode": "focus-existing"
  }
}
```

---

## Desktop-first app with window controls overlay

For a desktop productivity app that wants maximum content area.

```json
{
  "name": "CodeReview Pro",
  "short_name": "CodeReview",
  "description": "Collaborative code review and annotation tool",
  "id": "/",
  "start_url": "/?source=pwa",
  "scope": "/",
  "display": "standalone",
  "display_override": ["window-controls-overlay", "standalone"],
  "background_color": "#1e1e1e",
  "theme_color": "#1e1e1e",
  "lang": "en",
  "categories": ["productivity"],
  "icons": [
    { "src": "/icons/icon-192.png", "sizes": "192x192", "type": "image/png" },
    { "src": "/icons/icon-512.png", "sizes": "512x512", "type": "image/png" },
    { "src": "/icons/icon-512-maskable.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
  ],
  "screenshots": [
    {
      "src": "/screenshots/desktop.webp",
      "sizes": "1920x1080",
      "type": "image/webp",
      "form_factor": "wide",
      "label": "Split-pane code review interface"
    }
  ],
  "file_handlers": [
    {
      "action": "/open-file",
      "accept": {
        "text/plain": [".txt", ".md", ".js", ".ts", ".py"],
        "application/json": [".json"]
      }
    }
  ],
  "launch_handler": {
    "client_mode": "navigate-new"
  }
}
```

---

## Full-featured app with all capabilities

For an app leveraging every major manifest capability.

```json
{
  "name": "Collabra Workspace",
  "short_name": "Collabra",
  "description": "Real-time collaborative workspace for teams",
  "id": "/",
  "start_url": "/?source=pwa",
  "scope": "/",
  "display": "standalone",
  "display_override": ["window-controls-overlay", "standalone"],
  "orientation": "any",
  "background_color": "#ffffff",
  "theme_color": "#6c5ce7",
  "lang": "en",
  "dir": "ltr",
  "categories": ["productivity", "business"],
  "icons": [
    { "src": "/icons/icon-72.png", "sizes": "72x72", "type": "image/png" },
    { "src": "/icons/icon-96.png", "sizes": "96x96", "type": "image/png" },
    { "src": "/icons/icon-128.png", "sizes": "128x128", "type": "image/png" },
    { "src": "/icons/icon-144.png", "sizes": "144x144", "type": "image/png" },
    { "src": "/icons/icon-152.png", "sizes": "152x152", "type": "image/png" },
    { "src": "/icons/icon-192.png", "sizes": "192x192", "type": "image/png" },
    { "src": "/icons/icon-384.png", "sizes": "384x384", "type": "image/png" },
    { "src": "/icons/icon-512.png", "sizes": "512x512", "type": "image/png" },
    { "src": "/icons/icon-512-maskable.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
  ],
  "screenshots": [
    {
      "src": "/screenshots/desktop-workspace.webp",
      "sizes": "1280x720",
      "type": "image/webp",
      "form_factor": "wide",
      "label": "Team workspace with real-time collaboration"
    },
    {
      "src": "/screenshots/mobile-workspace.webp",
      "sizes": "750x1334",
      "type": "image/webp",
      "form_factor": "narrow",
      "label": "Mobile workspace view"
    }
  ],
  "shortcuts": [
    {
      "name": "New Document",
      "short_name": "New Doc",
      "description": "Create a new document",
      "url": "/new?source=shortcut",
      "icons": [{ "src": "/icons/shortcut-new.png", "sizes": "192x192" }]
    },
    {
      "name": "Recent Files",
      "short_name": "Recent",
      "description": "View recently accessed files",
      "url": "/recent?source=shortcut",
      "icons": [{ "src": "/icons/shortcut-recent.png", "sizes": "192x192" }]
    }
  ],
  "share_target": {
    "action": "/share",
    "method": "POST",
    "enctype": "multipart/form-data",
    "params": {
      "title": "title",
      "text": "text",
      "url": "url",
      "files": [
        { "name": "media", "accept": ["image/*", "video/*"] },
        { "name": "docs", "accept": ["application/pdf", ".pdf", ".docx"] }
      ]
    }
  },
  "file_handlers": [
    {
      "action": "/open-file",
      "accept": {
        "text/plain": [".txt", ".md"],
        "application/pdf": [".pdf"],
        "application/json": [".json"]
      }
    }
  ],
  "protocol_handlers": [
    { "protocol": "web+collabra", "url": "/open?resource=%s" }
  ],
  "launch_handler": {
    "client_mode": ["focus-existing", "auto"]
  }
}
```

# Tooling notes

Consult the section for the tool being changed. Confirm settings against the installed version's types, help, or primary documentation.

## Vite

Set defaults in `server.port` and, for apps with a preview command, `preview.port`. CLI `--port` overrides configuration. Enable `server.strictPort` and `preview.strictPort` to keep occupied ports from silently moving.

Keep HMR on Vite's server unless the project explicitly configures a separate port. For Vite-backed apps with a custom launcher, inspect that launcher too.

[Vite server options](https://vite.dev/config/server-options.html), [preview options](https://vite.dev/config/preview-options.html).

## TanStack devtools

The Vite plugin can open an additional listener: configure `eventBusConfig.port` and provide an independent override. Under HTTPS it may share Vite's server, so inspect the actual listener topology before assigning an extra port.

[Plugin configuration](https://github.com/tanstack/devtools/blob/main/docs/vite-plugin.md).

## Sanity

Set `server.port` in `sanity.cli.ts`; `sanity dev --port` overrides it. CORS is remote project configuration, independent of the Studio server's port.

Check the existing allowlist before proposing additions: a wildcard may cover the new port. Studio access needs credentials enabled. Frontends need an entry only for browser-side Sanity requests. `localhost` and `127.0.0.1` are distinct origins, and an override may need another entry.

Report exact origins and credential requirements. Preserve existing origins unless their removal is part of the authorized change.

[Sanity CLI port configuration](https://www.sanity.io/docs/help/cli-errors), [CORS](https://www.sanity.io/docs/content-lake/cors).

## Expo / Metro

Coordinate `expo start` with `expo run:ios`, `expo run:android`, and other startup aliases. Check their installed `--port` support so both plain launches and explicit overrides reach the same Metro instance. Resolve an occupied port explicitly rather than accepting an interactive next-port suggestion.

## Custom servers and task runners

Preserve service-specific environment overrides where present. Add an override mechanism only where needed. In Turbo's strict environment mode, declare any port variables the task needs, such as in `passThroughEnv`; a shared root `PORT` must not assign the same port to all child services.

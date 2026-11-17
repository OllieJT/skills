---
name: manual-ports
description: Assign local service ports when adding services, changing defaults, resolving collisions, or running additional instances.
---

# Manual ports

Choose the branch before changing anything:

- **Temporary instance or collision:** use a launch-time override. Follow [Overrides](#overrides).
- **New service or permanent reassignment:** follow [Assignments](#assignments). For a dry run, report the proposed changes and stop before applying them.

## Overrides

Keep the project's prefix and permanent defaults. Choose a free, suitable port; suffixes 70–99 in the project's block are the suggested pool, rather than a restriction on valid overrides. Inspect the service's existing CLI flags or environment variables and override auxiliary listeners separately when needed.

Check the selected ports against reservations and current listeners. An alternate browser origin may also need auth or CORS configuration; read the relevant [tooling notes](references/tooling.md#sanity) for Sanity.

Done when the instance uses the requested ports, permanent assignments are unchanged, and any required origin changes or limitations are reported.

## Scheme

Four digits, `PPTS`: the first two identify the project, the third identifies the service type, and the fourth identifies the service within that type. A repository and all its worktrees share one project prefix.

| Suffix | Service type |
| --- | --- |
| 00–09 | Vite development, including TanStack Start |
| 10–19 | Sanity Studio |
| 20–29 | Expo / Metro |
| 30–39 | Custom HTTP server |
| 40–49 | TanStack devtools event bus |
| 50–59 | Unallocated |
| 60–69 | Vite build preview |
| 70–99 | Additional instances / future allocations |

Slots start at zero and stay stable. Skip reserved numbers. For an app that runs them, preview and devtools ports reuse its Vite slot: dev + 60 and dev + 40 respectively. Check those derived ports together before allocating the slot. Processes without a listener need no port.

## Assignments

### 1. Inventory and allocate

Read [prefix ownership and reservations](references/catalog.md) and the project's startup configuration. Account for app servers, auxiliary listeners, previews, root task runners, aliases, and native launch commands. Use files and installed binaries for discovery; avoid dependency installation merely to inspect settings.

Preserve an existing prefix. For a new project, select an unowned two-digit prefix and record its owner. Surface conflicting ownership before assigning from that block. For an unsupported service type or a full band, propose an explicit exception or convention rather than silently inventing one.

Check each candidate against existing assignments, reservations, known service defaults, and current listeners on the relevant protocol and host bindings. Current availability is temporary; IANA registration alone does not reserve a port locally. An occupied assigned port calls for an override or an intentional migration, not automatic renumbering.

Done when every listening service in scope has a nonconflicting proposed assignment, with unresolved choices identified.

### 2. Apply and reconnect

Define each default once, allowing existing CLI or environment overrides to take precedence. Route startup aliases to that default. For monorepo fan-out, keep overrides per service and pass them through task-runner environment filtering; retain existing override mechanisms where they suffice.

Configure app launchers to fail clearly on an occupied port where supported. Keep auxiliary tools' fallback behaviour where it is not configurable.

Consult only the relevant sections of [tooling notes](references/tooling.md). Update dependent local links, origins, callbacks, proxies, explicitly bound HMR ports, environment settings, and docs. Review old-origin search results by meaning; historical records and unrelated fixtures retain their values. Apply remote changes only within the task's authorization; otherwise report the exact required delta.

Done when all startup paths resolve consistently and each affected integration is updated or identified as outstanding.

### 3. Verify and record

Inspect all changed startup paths; exercise each distinct changed launch mechanism, each changed override implementation, and simultaneous startup where services interact. Check busy-port failure when changing launcher collision handling. Record checks that cannot run and why. Stop only processes you started, unless the user requested keeping them running.

Runtime configuration owns applied service ports. Update the shared catalog only for prefix ownership, reservations, and exceptions. Keep pending rollout plans separate and distinguish proposed changes from applied ones in the report.

Done when the report accounts for every affected service's default, override, integration changes, and verification outcome.

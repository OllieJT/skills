# Prefix ownership and reservations

This catalog owns cross-project prefix assignments, standing reservations, and exceptions. Read applied service ports from each repository's startup configuration. A registered prefix does not mean its services have been migrated.

## Projects

Paths are relative to the user's Developer directory; locate the checkout in the current environment.

| Prefix | Repository |
| --- | --- |
| 51 | github.com/DesignThen/game-stamps |
| 52 | github.com/DesignThen/wisdecks |
| 53 | github.com/DesignThen/the-board-brains |
| 54 | github.com/DesignThen/spoons |
| 55 | github.com/OllieJT/career |

Keep each prefix unique across projects. Add new owners here when allocating a prefix; the convention does not prescribe allocation order.

## Reserved ports

| Port | Reason |
| --- | --- |
| 5201 | iperf3 default; Wisdecks' Vite slot 1 is skipped |
| 5432 | PostgreSQL default; skip Spoons' custom HTTP slot 2 |
| 5554–5555 | Android emulator; skip these in Career's block |

These are standing skips. Inspect current listeners before using other ports; the list is not an exhaustive inventory of software defaults.

## Exceptions

- **Career / Chapters:** its existing `--built` mode shares the chosen development port. It uses the same launcher, not a separate Vite preview command.

Record future exceptions with the service, departure from the scheme, and reason. A temporary override leaves this catalog unchanged.

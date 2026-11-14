---
name: secure-deps
description: Ensures that dependencies with updates within two days are ignored.
---


# Dependency Cooldown Cheat Sheet

Goal: ignore dependency versions published in the last 48 hours.

## Global Machine Defaults

Already configured on this machine:

```bash
npm config set min-release-age 2 --location=user
pnpm config set minimumReleaseAge 2880 --global
pnpm config set minimumReleaseAgeStrict true --global
```

Bun documented global config:

```toml
# ~/.bunfig.toml
[install]
minimumReleaseAge = 172800
```

Units:

```text
npm:  2 days
pnpm: 2880 minutes
Bun:  172800 seconds
```

Minimum versions:

```text
npm  >= 11.10.0
pnpm >= 10.16.0
Bun  >= 1.3.0
```

Verify:

```bash
npm --version
npm config get min-release-age

pnpm --version
pnpm config get minimumReleaseAge --global
pnpm config get minimumReleaseAgeStrict --global

bun --version
cat ~/.bunfig.toml
```

Expected:

```text
npm min-release-age: 2
pnpm minimumReleaseAge: 2880
pnpm minimumReleaseAgeStrict: true
Bun minimumReleaseAge: 172800
```

## When Starting Work In A Repository

Add repo-level config when you want the policy enforced for everyone and CI. Global config is a personal default; repo config is the shared contract.

### npm

Create or update:

```text
.npmrc
```

Add:

```ini
min-release-age=2
```

Optional trusted package exclusions:

```ini
min-release-age-exclude[]=@your-org/*
min-release-age-exclude[]=your-internal-package
```

### pnpm

Create or update:

```text
pnpm-workspace.yaml
```

Add:

```yaml
minimumReleaseAge: 2880
minimumReleaseAgeStrict: true
```

Optional trusted package exclusions:

```yaml
minimumReleaseAgeExclude:
  - '@your-org/*'
  - your-internal-package
```

If the repo already has `pnpm-workspace.yaml`, merge these keys into the existing top level.

### Bun

Create or update:

```text
bunfig.toml
```

Add:

```toml
[install]
minimumReleaseAge = 172800
```

Optional trusted package exclusions:

```toml
[install]
minimumReleaseAge = 172800
minimumReleaseAgeExcludes = ["@your-org/*", "your-internal-package"]
```

If the repo already has an `[install]` section, merge the new keys into that existing section.

Important: Bun's global `~/.bunfig.toml` is documented, but repo-level `bunfig.toml` or the CLI flag is the dependable enforcement path for installs.

One-off Bun command:

```bash
bun install --minimum-release-age 172800
bun add package-name --minimum-release-age 172800
```

## Quick Policy Snippet

For a repository using all three package managers, add:

```ini
# .npmrc
min-release-age=2
```

```yaml
# pnpm-workspace.yaml
minimumReleaseAge: 2880
minimumReleaseAgeStrict: true
```

```toml
# bunfig.toml
[install]
minimumReleaseAge = 172800
```

## Override Temporarily

Use this only for urgent security patches or controlled internal packages.

```bash
npm install package-name --min-release-age=0
pnpm config set minimumReleaseAge 0 --global
bun add package-name --minimum-release-age 0
```

After a temporary pnpm global override, restore:

```bash
pnpm config set minimumReleaseAge 2880 --global
pnpm config set minimumReleaseAgeStrict true --global
```

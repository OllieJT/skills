#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: ./link-skill.sh <folder-name>

Link a skill beside this script into ~/.agents/skills and ~/.claude/skills.
Use ./unlink-skill.sh <folder-name> to remove the links.

Optional destination overrides: AGENTS_SKILLS_DIR and CLAUDE_SKILLS_DIR.
EOF
}

fail() {
  printf 'Error: %s\n' "$*" >&2
  exit 1
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
esac

if [[ $# -ne 1 ]]; then
  usage >&2
  exit 1
fi

skill_name=$1
case "$skill_name" in
  ''|.|..|*/*|-*) fail 'Provide a single folder name, without a path.' ;;
esac

skills_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
skill_source="$skills_root/$skill_name"
destinations=(
  "${AGENTS_SKILLS_DIR:-$HOME/.agents/skills}"
  "${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
)

if [[ ! -f "$skill_source/SKILL.md" ]]; then
  fail "No SKILL.md found in $skill_source"
fi

# Check both destinations before changing either one.
for destination in "${destinations[@]}"; do
  skill_link="$destination/$skill_name"
  if [[ -L "$skill_link" ]]; then
    [[ "$(readlink "$skill_link")" == "$skill_source" ]] ||
      fail "Refusing to change an unrelated symlink: $skill_link"
  elif [[ -e "$skill_link" ]]; then
    fail "Refusing to change an existing file or directory: $skill_link"
  fi
done

for destination in "${destinations[@]}"; do
  skill_link="$destination/$skill_name"
  if [[ -L "$skill_link" ]]; then
    printf 'Already linked: %s\n' "$skill_link"
  else
    mkdir -p -- "$destination"
    ln -s -- "$skill_source" "$skill_link"
    printf 'Linked: %s -> %s\n' "$skill_link" "$skill_source"
  fi
done

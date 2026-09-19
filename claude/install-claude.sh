#!/usr/bin/env bash
set -euo pipefail
SRC="${1:-$(cd "$(dirname "$0")/.." && pwd)}"
DEST="${2:-$PWD/.claude/skills}"
mkdir -p "$DEST"
for d in "$SRC"/*/; do
  name="$(basename "$d")"
  [[ -f "$d/SKILL.md" ]] || continue
  if [[ -e "$DEST/$name" ]]; then
    echo "SKIP conflict: $DEST/$name already exists" >&2
    continue
  fi
  cp -R "$d" "$DEST/$name"
  echo "INSTALLED $name -> $DEST/$name"
done
echo "Copy complete. Ask Claude Code to read claude/CLAUDE-BOOTSTRAP.md and validate before use."

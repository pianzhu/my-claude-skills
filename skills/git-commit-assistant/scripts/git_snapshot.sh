#!/usr/bin/env bash
set -euo pipefail

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "ERROR: 当前目录不是 Git 仓库。" >&2
  exit 1
fi

echo "=== git branch --show-current ==="
git branch --show-current || true
echo

echo "=== git status ==="
git status
echo

echo "=== git diff --staged ==="
git diff --staged
echo

echo "=== git diff ==="
git diff
echo

echo "=== git log --oneline -5 ==="
git log --oneline -5

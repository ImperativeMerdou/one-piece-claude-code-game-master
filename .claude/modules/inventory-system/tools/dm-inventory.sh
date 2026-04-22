#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MODULE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PROJECT_ROOT="$(cd "$MODULE_ROOT/../../.." && pwd)"
cd "$PROJECT_ROOT"

# Force UTF-8 stdout so Unicode don't crash on Windows cp1252/cp1254.
export PYTHONIOENCODING=utf-8
export PYTHONUTF8=1

uv run python "$MODULE_ROOT/lib/inventory_manager.py" "$@"

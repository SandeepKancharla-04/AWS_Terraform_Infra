#!/usr/bin/env bash
set -euo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
cd "$REPO_ROOT"

# Optional: install tflint if available via brew
if command -v brew >/dev/null 2>&1; then
  if ! command -v tflint >/dev/null 2>&1; then
    echo "Installing tflint via Homebrew..."
    brew install tflint >/dev/null
  fi
fi

# Initialize tflint plugins (aws ruleset)
if command -v tflint >/dev/null 2>&1; then
  tflint --init --config .tflint.hcl || true
fi

echo "Bootstrap complete. Run ./scripts/plan.sh or make plan next."

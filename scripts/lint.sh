#!/usr/bin/env bash
set -euo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
cd "$REPO_ROOT"

terraform fmt -check -recursive || true
terraform validate
if command -v tflint >/dev/null 2>&1; then
  tflint --init --config .tflint.hcl || true
  tflint
else
  echo "tflint not installed. Install with: brew install tflint" >&2
fi

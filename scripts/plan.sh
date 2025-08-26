#!/usr/bin/env bash
set -euo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
cd "$REPO_ROOT"

terraform init -input=false
terraform fmt -check -recursive || terraform fmt -recursive
terraform validate
terraform plan -input=false

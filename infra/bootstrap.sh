#!/usr/bin/env bash

set -euo pipefail

INFRA_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo apt update

sudo apt install -y \
    build-essential \
    htop \
    ca-certificates

"$INFRA_DIR/scripts/install-python.sh"

"$INFRA_DIR/scripts/install-claude.sh"

"$INFRA_DIR/scripts/install-herdr.sh"

echo "Research workstation setup."


#!/usr/bin/env bash

set -euo pipefail

if command -v herdr >/dev/null 2>&1; then
    echo "Herdr already installed:"
    herdr --version
    exit 0
fi

curl -fsSL https://herdr.dev/install.sh | sh

export PATH="$HOME/.local/bin:$PATH"

herdr --version


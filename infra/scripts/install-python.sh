#!/usr/bin/env bash

set -euo pipefail

if command -v uv >/dev/null 2>&1; then
    echo "uv already installed:"
    uv --version
    exit 0
fi

curl -LsSf https://astral.sh/uv/install.sh | sh

# Make uv available in the current shell
export PATH="$HOME/.local/bin:$PATH"

echo "uv installed:"
uv --version


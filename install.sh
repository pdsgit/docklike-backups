#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Installing local .deb packages..."
sudo dpkg -i --force-overwrite ./*.deb 2>/dev/null || true

echo "Fixing missing dependencies..."
sudo apt --fix-broken install -y

echo "Installation complete!"

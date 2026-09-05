#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Get current script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Installing local .deb packages..."
sudo dpkg -i --force-overwrite ./*.deb

echo "Fixing missing dependencies if any..."
sudo apt --fix-broken install -y

echo "Installation complete!"

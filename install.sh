#!/bin/bash

# Installation script for Portman
# This script makes the portman tool available globally on your system

echo "🚀 Installing Portman..."

# Make sure the script is executable
chmod +x portman

# Create symbolic link to make it available in PATH
if sudo ln -sf "$(pwd)/portman" /usr/local/bin/portman; then
    echo "✅ Successfully installed Portman!"
    echo "🔥 You can now use 'portman' command from anywhere."
    echo "ℹ️ Usage: portman <port-number> [--force]"
else
    echo "❌ Installation failed. Please try again with sudo permissions."
    echo "💡 You can manually install by running:"
    echo "   sudo ln -s \"$(pwd)/portman\" /usr/local/bin/portman"
fi

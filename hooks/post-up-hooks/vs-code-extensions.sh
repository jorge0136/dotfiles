#!/usr/bin/env bash
set -euo pipefail

echo
echo "Starting to install vs-code-extensions"
echo

echo "Note if this fails, it's likely that `code` isn't on"

cat $HOME/.dotfiles/vscode-extensions | xargs -L 1 code --install-extension

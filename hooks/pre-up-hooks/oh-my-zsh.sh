#!/usr/bin/env bash
set -euo pipefail

echo
echo "Starting to install oh-my-zsh"
echo

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

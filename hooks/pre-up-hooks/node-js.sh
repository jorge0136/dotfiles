#!/usr/bin/env bash

set -euo pipefail

# If the version of node that's installed isn't the system node, then we can skip this step
# completely.
if [[ $(command -v node) =~ .nodenv ]]; then
  exit 0
fi

# Install the latest version of Node
NODE_VERSION=$(nodenv install --list | grep -v -e '[a-z]' | tail -1| tr -d '[:space:]')
nodenv install "$NODE_VERSION"
nodenv global "$NODE_VERSION"
eval "$(nodenv init -)"

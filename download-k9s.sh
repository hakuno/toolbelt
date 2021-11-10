#!/bin/bash
cd ~
VERSION=$(curl --silent "https://api.github.com/repos/derailed/k9s/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
echo "Downloading ${VERSION}..." && curl -L https://github.com/derailed/k9s/releases/download/${VERSION}/k9s_Linux_x86_64.tar.gz -o k9s.tar.gz
echo "Extracting binary from k9s.tar.gz..." && sudo tar -C /usr/local/bin -xzvf k9s.tar.gz k9s
echo "Removing downloaded file..." && rm k9s.tar.gz
[[ -f /usr/local/bin/k9s ]] && file /usr/local/bin/k9s || exit 1
echo "Applying permissions..." && sudo chmod +x /usr/local/bin/k9s
echo "Linking to known PATH..." && sudo ln -sf /usr/local/bin/k9s /usr/bin/k9s
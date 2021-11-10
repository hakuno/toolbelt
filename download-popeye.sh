#!/bin/bash
cd ~
VERSION=$(curl --silent "https://api.github.com/repos/derailed/popeye/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
echo "Downloading ${VERSION}..." && curl -L https://github.com/derailed/popeye/releases/download/${VERSION}/popeye_Linux_x86_64.tar.gz -o popeye.tar.gz
echo "Extracting binary from k9s.tar.gz..." && sudo tar -C /usr/local/bin -xzvf popeye.tar.gz popeye
sudo ls -l /usr/local/bin
echo "Removing downloaded file..." && rm popeye.tar.gz
[[ -f /usr/local/bin/popeye ]] && file /usr/local/bin/popeye || exit 1
echo "Applying permissions..." && sudo chmod +x /usr/local/bin/popeye
echo "Linking to known PATH..." && sudo ln -sf /usr/local/bin/popeye /usr/bin/popeye
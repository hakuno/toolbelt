#!/bin/bash
VERSION=$(curl --silent "https://api.github.com/repos/mikefarah/yq/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')

# Download
curl -sSL -o /home/uello/yq_linux_amd64.tar.gz https://github.com/mikefarah/yq/releases/download/$VERSION/yq_linux_amd64.tar.gz

# Extract
sudo tar -xzvf /home/uello/yq_linux_amd64.tar.gz -O > /usr/local/bin/yq

# Authorize
sudo chmod +x /usr/local/bin/yq

# Spread the word
sudo ln -sf /usr/local/bin/yq /usr/bin/yq

# Bye
rm /home/uello/yq_linux_amd64.tar.gz

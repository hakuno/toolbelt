#!/bin/bash
VERSION=$(curl --silent "https://api.github.com/repos/aquasecurity/tfsec/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
sudo curl -L https://github.com/aquasecurity/tfsec/releases/download/${VERSION}/tfsec-linux-amd64 -o /usr/local/bin/tfsec
sudo chmod +x /usr/local/bin/tfsec
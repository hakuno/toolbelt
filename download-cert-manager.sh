#!/bin/bash
VERSION=$(curl --silent "https://api.github.com/repos/cert-manager/cert-manager/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
curl -L https://github.com/cert-manager/cert-manager/releases/download/${VERSION}/kubectl-cert_manager-linux-amd64.tar.gz -o kubectl-cert-manager.tar.gz
sudo tar -C /usr/local/bin -xzvf kubectl-cert-manager.tar.gz kubectl-cert_manager
rm kubectl-cert-manager.tar.gz
sudo chmod +x /usr/local/bin/kubectl-cert_manager
#!/bin/bash
STABLE="v4.4.4"
wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | TAG=$STABLE bash

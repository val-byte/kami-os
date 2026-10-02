#!/usr/bin/bash
set -oue pipefail

curl -Lo /tmp/sevi.tar.gz https://github.com/TaylanTatli/Sevi/archive/refs/heads/main.tar.gz
mkdir -p /tmp/sevi-src
tar -xzf /tmp/sevi.tar.gz -C /tmp/sevi-src --strip-components=1
cd /tmp/sevi-src
bash install.sh -a -d /etc/skel/.local/share/icons

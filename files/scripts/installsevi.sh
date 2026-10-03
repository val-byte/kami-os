#!/usr/bin/bash
set -oue pipefail

curl -Lo /tmp/sevi.zip https://github.com/TaylanTatli/Sevi/archive/refs/heads/master.zip
mkdir -p /tmp/sevi-src
unzip master.zip -d /tmp/sevi-src
cd /tmp/sevi-src
bash install.sh -a -d /etc/skel/.local/share/icons

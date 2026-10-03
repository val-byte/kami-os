#!/usr/bin/bash
set -oue pipefail

curl -Lo /tmp/sevi.zip https://github.com/TaylanTatli/Sevi/archive/refs/heads/master.zip
mkdir -p /tmp/sevi-src
unzip /tmp/sevi.zip -d /tmp/sevi-src
cd /tmp/sevi-src
sed -i '/gtk-update-icon-cache/d' install.sh
bash install.sh -a -d /etc/skel/.local/share/icons

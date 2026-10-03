#!/usr/bin/bash
set -xeuo pipefail

git clone --depth=1 https://github.com/TaylanTatli/Sevi.git /tmp/sevi-src
cd /tmp/sevi-src
sed -i '/gtk-update-icon-cache/d' install.sh
mkdir -p /etc/skel/.local/share/icons
bash install.sh -a -d /etc/skel/.local/share/icons

#!/usr/bin/env bash

set -euo pipefail

echo 'eval "$(starship init bash)"' >> /etc/skel/.bashrc

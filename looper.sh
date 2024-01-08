#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

vlc -q --loop --fullscreen --no-osd --playlist-tree /mnt/sda/ >/dev/null 2>&1

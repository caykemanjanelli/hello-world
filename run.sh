#!/bin/sh
set -e
cat << "EOF"
 _   _      _ _          __        __         _     _
| | | | ___| | | ___     \ \      / /__  _ __| | __| |
| |_| |/ _ \ | |/ _ \ ____\ \ /\ / / _ \| '__| |/ _` |
|  _  |  __/ | | (_) |_____\ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/       \_/\_/ \___/|_|  |_|\__,_|
======================================================
EOF
date
echo ""

case "$@" in
bash*) exec "$@" ;;
sh*  ) exec "$@" ;;
zsh* ) exec "$@" ;;
ash* ) exec "$@" ;;
*    ) uvicorn "$@" ;;
esac
#!/usr/bin/env bash
# Publikuje index.html na serwer. Wymaga sudo (web root należy do basic/root).
set -e
cd "$(dirname "$0")"
DEST="/var/www/enklava/public/tools/enklava-v2/index.html"
sudo cp index.html "$DEST"
sudo chown basic:basic "$DEST"
echo "✅ Wdrożono → https://enklava.co/tools/enklava-v2/"

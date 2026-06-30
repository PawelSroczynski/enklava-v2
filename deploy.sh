#!/usr/bin/env bash
# Publikuje index.html na serwer.
# UWAGA: live serwuje się z dist/ (nie public/). dist należy do noaidi (bez sudo);
# public aktualizujemy dla spójności (wymaga sudo).
set -e
cd "$(dirname "$0")"
DIST="/var/www/enklava/dist/tools/enklava-v2/index.html"
PUB="/var/www/enklava/public/tools/enklava-v2/index.html"

# Ścieżka serwowana (dist) — bez sudo:
cp index.html "$DIST"

# Kopia do public (best-effort; wymaga sudo):
if sudo -n true 2>/dev/null; then
  sudo cp index.html "$PUB" && sudo chown basic:basic "$PUB"
else
  sudo cp index.html "$PUB" && sudo chown basic:basic "$PUB" || echo "⚠️  public pominięty (brak sudo) — live (dist) już zaktualizowany"
fi

echo "✅ Wdrożono → https://enklava.co/tools/enklava-v2/"

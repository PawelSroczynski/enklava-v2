# enklava-v2

Strona landing **Enklava v2** (staging, noindex) — pojedynczy plik `index.html`.

GitHub jest źródłem prawdy. Edytuj tutaj, nie bezpośrednio na serwerze.

## Workflow (obie sesje)

```bash
cd /home/noaidi/clawd/enklava-v2
git pull                 # ZAWSZE przed edycją
# ...edytuj index.html...
git add index.html
git commit -m "opis zmiany"
git push
bash deploy.sh           # publikuje na serwer (wymaga sudo)
```

Zasada: małe commity, `pull` przed startem, `push` po skończeniu — wtedy dwie sesje się nie nadpisują.

## Deploy

`deploy.sh` kopiuje `index.html` do web roota:
`/var/www/enklava/public/tools/enklava-v2/index.html`

Live: https://enklava.co/tools/enklava-v2/

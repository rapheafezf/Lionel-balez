#!/bin/sh
# Construit le site statique pour Vercel dans dist/ :
#   /              -> nouveau site (démo)
#   /presentation/ -> présentation de la refonte
set -eu
rm -rf dist
mkdir -p dist/assets dist/presentation/assets
cp -R site/assets/img dist/assets/img
sed 's|href="index.html#demonstration"|href="/presentation/#demonstration"|' site/demo.html > dist/index.html
cp -R site/assets/img site/assets/shots dist/presentation/assets/
cp site/demo.html dist/presentation/demo.html
{
  printf '<!doctype html><html lang="fr"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui}img{max-width:100%%}[hidden]{display:none!important}</style></head><body>'
  cat site/index.html
  printf '</body></html>'
} > dist/presentation/index.html
echo "dist/ prêt"

#!/bin/sh
# Збірка: npm install && sh build.sh  → результат у папці dist/
set -e
rm -rf dist && mkdir -p dist/assets
npx tailwindcss -c tailwind.config.js -i src/styles.css -o dist/assets/style.css --minify
npx esbuild src/app.jsx --bundle --minify --format=iife --target=es2019 --loader:.mp3=dataurl --loader:.jsx=jsx \
  --define:process.env.NODE_ENV='"production"' --outfile=dist/assets/app.js
cp index.template.html dist/index.html
[ -f assets/logo.svg ] && cp assets/logo.svg dist/assets/logo.svg || true
touch dist/.nojekyll
ls -la dist dist/assets

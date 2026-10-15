#!/bin/sh
# Encrypts src/index.html into ./index.html (the only page that gets published).
# Password comes from STATICRYPT_PASSWORD in .env (gitignored).
set -e
cd "$(dirname "$0")"
npx --yes staticrypt src/index.html -d . --short --remember 60 \
  --template-title "Projects" \
  --template-instructions "Enter the password to see the projects." \
  --template-color-primary "#c2410c" --template-color-secondary "#faf9f6"

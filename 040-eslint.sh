#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

figlet eslint
npm i -D eslint@latest eslint-config-standard-with-typescript@latest

figlet typescript
npm i -D @typescript-eslint/eslint-plugin@latest @typescript-eslint/parser@latest

figlet plugins
npm i -D eslint-plugin-import@latest eslint-plugin-promise@latest

figlet react
npm i -D eslint-plugin-react@latest eslint-plugin-react-hooks@latest eslint-plugin-jsx-a11y@latest

figlet airbnb
npm i -D eslint-config-airbnb@latest eslint-config-airbnb-typescript@latest

figlet prettier
npm i -D eslint-config-prettier@latest

figlet init
if test ! -f ./.eslintrc.json ; then
  npx eslint --init
fi

figlet config
npx json -I -f .eslintrc.json \
  -e 'this.parserOptions.project="./tsconfig.json"' \
  -e 'this.extends=[ "standard-with-typescript", "airbnb", "airbnb/hooks", "airbnb-typescript", "plugin:import/recommended", "plugin:promise/recommended", "plugin:react/recommended", "plugin:react/jsx-runtime", "plugin:react-hooks/recommended", "plugin:jsx-a11y/recommended", "prettier" ]' \
  -e 'this.plugins=[ "import", "promise", "react", "react-hooks", "jsx-a11y" ]' \
  -e 'this.overrides=[ { "files": "./src/vite-env.d.ts", "rules": { "@typescript-eslint/triple-slash-reference": "off" } } ]'

figlet pkg
npm pkg set scripts.lint:js="eslint src/"

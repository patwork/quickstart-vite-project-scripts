#!/bin/bash

. "$(dirname -- "$0")/0000.sh" go

# install
pnpm install -D prettier@latest prettier-plugin-organize-imports@latest
pnpm pkg set scripts.format="prettier --check ."
pnpm pkg set scripts.format:fix="prettier --write ."

# husky
add_to_husky_hook "pre-commit" "pnpm run format"

# config
echo '{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5",
  "plugins": ["prettier-plugin-organize-imports"]
}' > .prettierrc.json

# ignore
echo 'pnpm-lock.yaml' > .prettierignore

# Commit
commit_all_changes "Quickstart: Prettier (Organize Imports)"


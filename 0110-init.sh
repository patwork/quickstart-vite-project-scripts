#!/bin/bash

. "$(dirname -- "$0")/0000.sh" go

# Husky
pnpm install -D husky@latest
pnpm exec husky init

# Pre-commit
echo "git config --local --list
pnpm run lint" > .husky/pre-commit

# Pre-push
echo "git config --local --list
pnpm run format" > .husky/pre-push

# Commit
commit_all_changes "Quickstart: Husky"


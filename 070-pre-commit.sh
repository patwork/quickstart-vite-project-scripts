#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

figlet pre-commit
npx husky set .husky/pre-commit "npm outdated"
npx husky add .husky/pre-commit "npm run lint"

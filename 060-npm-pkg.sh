#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

figlet lint
npm pkg set scripts.lint="npm run lint:js && npm run lint:css"
npm pkg set scripts.lint:fix="npm run lint:js:fix && npm run lint:css:fix"

figlet info
npm run

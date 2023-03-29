#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

figlet husky
npm i -D husky@latest

figlet init
npm pkg set scripts.prepare="husky install"
npm run prepare

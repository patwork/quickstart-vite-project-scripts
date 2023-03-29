#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

figlet stylelint
npm i -D stylelint@latest stylelint-config-standard-scss@latest

figlet config
echo {} > .stylelintrc.json
npx json -I -f .stylelintrc.json -e 'this.extends="stylelint-config-standard-scss"'

figlet pkg
npm pkg set scripts.lint:css="stylelint 'src/**/*.css'"

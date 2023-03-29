#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

#
# https://getbootstrap.com/docs/5.3/getting-started/vite/
#

figlet bootstrap
npm i bootstrap@latest @popperjs/core@latest
npm i -D @types/bootstrap@latest

figlet css
test -f src/index.css && mv src/index.css src/index.css.`date +%s`.bak
echo "@import \"bootstrap\";" > src/index.css

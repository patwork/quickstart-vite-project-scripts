#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

figlet editorconfig
wget -O .editorconfig https://raw.githubusercontent.com/patwork/quickstart-vite-project-scripts/main/.editorconfig

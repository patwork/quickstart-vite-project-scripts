#!/bin/bash

###
set -e
cd $(dirname -- "$0")/../www || exit 1
test -d .git -a -f package.json || exit 2
###

#
# https://tailwindcss.com/docs/guides/vite
#

figlet tailwind
npm i -D tailwindcss@latest postcss@latest autoprefixer@latest

figlet init
npx tailwindcss init -p

figlet config
L1='".\/index.html",'
L2='".\/src\/**\/*.{js,ts,jsx,tsx}",'
for config in tailwind.config.* ; do
  echo $config
  sed -i "s/^\(.*\)\(content: \[\)\(\],\)/\1\2\n\1\1${L1}\n\1\1${L2}\n\1\3/" $config
done

figlet css
test -f src/index.css && mv src/index.css src/index.css.`date +%s`.bak
echo -e "@tailwind base;\n@tailwind components;\n@tailwind utilities;" > src/index.css

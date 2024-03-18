#!/bin/bash

# project directory
if [ "$1" = "" ] ; then
	echo USAGE: $0 project-directory
	exit 1
fi

# Create Vite App
pnpm create vite@latest --template react-ts "$1"
cd "$1"

# Optional Git config
if command -v git-init-patwork > /dev/null 2>&1 ; then
	test -d .git && rm -rf .git
	git-init-patwork
	git add -A .
	git commit -a -m "Initial commit from Create Vite App."
fi


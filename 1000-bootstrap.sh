#!/bin/bash

. "$(dirname -- "$0")/0000.sh" go

#
# https://getbootstrap.com/docs/5.3/getting-started/vite/
#

# bootstrap
pnpm install bootstrap@latest @popperjs/core@latest
pnpm install -D @types/bootstrap@latest

# update src/css
echo '@import "bootstrap";' > src/index.css

# Commit
commit_all_changes "Quickstart: Bootstrap"


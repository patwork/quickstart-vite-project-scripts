#!/bin/bash

. "$(dirname -- "$0")/0000.sh" go

# format
pnpm run format:fix

# Commit
commit_all_changes "Quickstart: General cleanup and formatting"


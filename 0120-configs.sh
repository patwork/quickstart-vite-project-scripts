#!/bin/bash

. "$(dirname -- "$0")/0000.sh" go

# Editorconfig
echo 'root = true

[*]
indent_style = space
indent_size = 2
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true

[*.{js,ts}]
max_line_length = 120
quote_type = single
' > .editorconfig

# Commit
commit_all_changes "Quickstart: Editorconfig"


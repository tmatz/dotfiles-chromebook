#!/bin/bash

# >>> scala-cli completions >>>
_scala-cli_completions() {
  local IFS=$'\n'
  eval "$(scala-cli complete bash-v1 "$(( $COMP_CWORD + 1 ))" "${COMP_WORDS[@]}")"
}

complete -F _scala-cli_completions scala-cli
# <<< scala-cli completions <<<

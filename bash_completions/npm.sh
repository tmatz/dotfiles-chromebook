#!/bin/bash

# This is bash-completion for 'npm run' command.
# Find up package.json and completion 'npm scripts'.
_npm_run_completion() {
  local cur prev words
  _get_comp_words_by_ref -n : words cword cur
  local subCommand dir scripts
  if [ "${cword}" == "1" ]; then
    COMPREPLY=( $(compgen -W "i run start update help" ${cur}) )
    return;
  fi;
  subCommand="${words[1]}"
  if [ "${subCommand}" = "run" ]; then
    dir=$(pwd)
    while [ ! -f "${dir}/package.json" ]; do
      if [ "${dir}" = "/" ]; then
        return
      fi
      dir=$(cd $(dirname $(readlink $dir || echo $dir)) || exit;pwd)
    done
    scripts=$(jq --raw-output '.scripts | keys[] | select(test("^[^/]"))' < "${dir}/package.json")
    COMPREPLY=( $(compgen -W "${scripts}" "${cur}") )
    __ltrim_colon_completions "${cur}"
  fi
}

complete -F _npm_run_completion npm

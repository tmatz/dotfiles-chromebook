#!/bin/bash

# This is bash-completion for 'npm run' command.
# Find up package.json and completion 'npm scripts'.
_npm_run_completion() {
  CURRENT="${COMP_WORDS[COMP_CWORD]}"
  SUBCOMMAND="${COMP_WORDS[COMP_CWORD-1]}"
  if [ "${COMP_CWORD}" == "1" ]; then
    COMPREPLY=( $(compgen -W "i run start update help" ${CURRENT}) )
    return;
  fi;
  if [ "${SUBCOMMAND}" != "run" ]; then
    return
  fi
  DIR=$(pwd)
  while [ ! -f "${DIR}/package.json" ]; do
    if [ "${DIR}" = "/" ]; then
      return
    fi
    DIR=$(cd $(dirname $(readlink $DIR || echo $DIR)) || exit;pwd)
  done
  SCRIPTS=$(cat "${DIR}/package.json" | jq '.scripts | keys[]' | sed -e 's/"//g')
  COMPREPLY=( $(compgen -W "${SCRIPTS}" ${CURRENT}) )
}

complete -F _npm_run_completion npm

#!/bin/bash
(
  link () {
    mkdir -p ~/`dirname $1`
    ln -srf ~/dotfiles/$1 ~/$1
  }

  link .bash_aliases
  link .config/lazygit/config.yml
  link .config/systemd/user/ssh-agent.service
  link .config/bash_completion
  link .gitconfig
  link .inputrc
  link .ssh/config
  link .vim/autoload/plug.vim
  link .vim/coc-settings.json
  link .vim/user/coc.nvim.vim
  link .vim/user/nerdtree.vim
  link .vim/user/uim.vim
  link .vimrc
  link bin/imectrl
  link .uim
)

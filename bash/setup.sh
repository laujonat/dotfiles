#!/bin/bash

set -e
set -o pipefail

function link_aliases() {
  ln -svfn $DOTFILES/aliases/.aliases $HOME/.aliases
  ln -svfn $DOTFILES/aliases/.omzsh_aliases $HOME/.omzsh_aliases
}

function link_custom() {
  ln -svfn $DOTFILES/custom/.better_bin $HOME/.better_bin
  ln -svfn $DOTFILES/custom/.better_http $HOME/.better_http
  ln -svfn $DOTFILES/custom/.better_ifconfig $HOME/.better_ifconfig
  ln -svfn $DOTFILES/custom/.better_nmap $HOME/.better_nmap
}

function link_bash() {
  ln -svfn $DOTFILES/bash/.colors $HOME/.colors
  ln -svfn $DOTFILES/bash/.bash_logout $HOME/.bash_logout
  ln -svfn $DOTFILES/bash/.bash_profile $HOME/.bash_profile
  ln -svfn $DOTFILES/bash/.bashrc $HOME/.bashrc
}


echo '------ Symlinking... ------'
link_aliases
link_custom
link_bash
echo '------ done ------'

source ~/.bash_profile

#!/bin/bash
# NOTE: .bash_profile is only sourced in login shells (SSH, etc)
# Set environment variables and startup programs here.

# export DOTFILES="$HOME/.dotfiles"
# export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"
# export LESSCLOSE="/usr/bin/lesspipe %s %s";



echo -e "\n$(bash --version | head -3)\n"
shopt -q login_shell && echo -e "[Login shell]\nSourced .bash_profile" || echo -e "[Interactive non-login shell]\nSourced .profile"
echo -e "\n"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

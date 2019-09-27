#!/bin/bash
# NOTE: .bash_profile is only sourced in login shells (SSH, etc)
# Set environment variables and startup programs here.

# export DOTFILES="$HOME/.dotfiles"
# export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"
# export LESSCLOSE="/usr/bin/lesspipe %s %s";

echo -e '[bash_profile]\n'
shopt -q login_shell && echo 'Login shell. Using .bash_profile' || echo 'Interactive non-login shell. Using .profile'

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# ii: Outputs system information
ii

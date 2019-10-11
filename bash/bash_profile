#!/bin/bash
# NOTE: .bash_profile is only sourced in login shells (SSH, etc)
# Set environment variables and startup programs here.

echo "$(bash --version | head -2)"
shopt -q login_shell && echo -e "\nSourced .bash_profile" || echo -e "\nSourced .profile"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

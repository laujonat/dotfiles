#!/bin/bash
# NOTE: .bash_profile is only sourced in login shells (SSH, etc)
# Set environment variables and startup programs here.

export DOTFILES="$HOME/.dotfiles"
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"
export LESSCLOSE="/usr/bin/lesspipe %s %s";

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# ii: Outputs system information
ii

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


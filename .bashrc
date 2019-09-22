#!/bin/bash/

HISTFILESIZE=-1
HISTSIZE=1000000
HISTCONTROL=ignoredups
HISTFILE=~/.bash_history_actual

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export PATH="$PATH:/usr/local/bin/"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='[${blu}\u${red}@${grn}\h:${nc}\W]🌱 '

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


#!/bin/bash
#  ---------------------------------------------------------------------------
#  [[ expression ]]
#     -s : True if file exists and has a size greater than zero.
#     -f : True if file exists and is a regular file.
#  ---------------------------------------------------------------------------

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -f "$DOTFILES/.colors" ]] && source "$DOTFILES/.colors"

# aliases
for a in $DOTFILES/aliases/.[^.]*
do
  [[ -f $a ]] && source $a
done

# custom functions & aliases
for c in $DOTFILES/custom/.[^.]*
do
  [[ -f $c ]] && source $c
done

[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

ii

#source "${HOME}/.iterm2_shell_integration.bash"


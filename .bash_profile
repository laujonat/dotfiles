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
  echo "Processing alias bash file $a"
  [[ -s $a ]] && source $a
done

# custom functions & aliases
for c in $DOTFILES/custom/.[^.]*
do
  echo "Processing custom bash file $c"
  [[ -s $c ]] && source $c
done

[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

ii

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


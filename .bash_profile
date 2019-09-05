#  ---------------------------------------------------------------------------
#  Description:  This file holds all my bash config
#
#  TODO: Having dotfiles path defined in .profile
#        - This is ugly.  A better solution will symlink required 
#          bash filesinto the user home path. 
#  
#  Flags:  [[ expression ]]
#     -s : True if file exists and has a size greater than zero.
#     -f : True if file exists and is a regular file.
#  ---------------------------------------------------------------------------

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 


[[ -f "$DOTFILES/.colors" ]] && source "$DOTFILES/.colors"
[[ -f "$DOTFILES/.omzsh_aliases" ]] && source "$DOTFILES/.omzsh_aliases"
[[ -f "$DOTFILES/.aliases" ]] && source "$DOTFILES/.aliases"
[[ -f "$DOTFILES/.better_bin" ]] && source "$DOTFILES/.better_bin"
[[ -f "$DOTFILES/.better_ifconfig" ]] && source "$DOTFILES/.better_ifconfig"
[[ -f "$DOTFILES/.better_http" ]] && source "$DOTFILES/.better_http"

[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

ii

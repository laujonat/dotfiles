# Used on Intel Macs

# Autoload compinit and promptinit
autoload -Uz compinit promptinit

# Use brew to install brew install antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

antidote load

bindkey -r '\C-s'
stty -ixon

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load private zsh configurations
if [[ -f ~/.zsh_private ]]; then
	source ~/.zsh_private
fi

# Update PATH
export PATH="/usr/local/opt/binutils/bin:/usr/local/sbin:/usr/local/bin:$HOME/Library/pnpm:$PATH"

export TERM=xterm

bindkey '^[[A' autosuggest-accept
bindkey '^[[B' autosuggest-accept

. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

# initialise completions with ZSH's compinit
compinit

source $HOME/.zsh_personal

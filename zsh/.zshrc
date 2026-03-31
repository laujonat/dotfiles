# Exit early for non-interactive shells
[[ -o interactive ]] || return

# Completions
autoload -Uz compinit

# Antidote (only if installed)
if command -v brew >/dev/null 2>&1; then
  antidote_path="$(brew --prefix 2>/dev/null)/opt/antidote/share/antidote/antidote.zsh"
  [[ -f "$antidote_path" ]] && source "$antidote_path" && antidote load
fi

# fzf bindings (if installed)
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# asdf (only if installed)
if [[ -f "$HOME/.asdf/asdf.sh" ]]; then
  . "$HOME/.asdf/asdf.sh"
  [[ -n "${ASDF_DIR:-}" && -d "${ASDF_DIR}/completions" ]] && fpath=("${ASDF_DIR}/completions" $fpath)
fi

# Initialize completions after all fpath changes
compinit

# Interactive terminal behavior
stty -ixon 2>/dev/null
bindkey -r '^S' 2>/dev/null

# Optional configs
[[ -f "$HOME/.zsh_private"  ]] && source "$HOME/.zsh_private"
[[ -f "$HOME/.zsh_personal" ]] && source "$HOME/.zsh_personal"

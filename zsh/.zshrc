# Homebrew env (arm64 vs intel) — must be before brew usage
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# User-local binaries
[[ -d "$HOME/.local/bin" ]] && export PATH="$HOME/.local/bin:$PATH"

# pnpm (if present)
[[ -d "$HOME/Library/pnpm" ]] && export PATH="$HOME/Library/pnpm:$PATH"

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

# Interactive terminal behavior only
if [[ -o interactive ]]; then
  # Disable Ctrl-S/Ctrl-Q software flow control
  stty -ixon 2>/dev/null

  # Prevent accidental Ctrl-S freeze behavior in zsh
  bindkey -r '^S' 2>/dev/null
fi

# Optional configs
[[ -f "$HOME/.zsh_private"  ]] && source "$HOME/.zsh_private"
[[ -f "$HOME/.zsh_personal" ]] && source "$HOME/.zsh_personal"

export DOTFILES="$HOME/.dotfiles"
export CONFIG="$HOME/conf"
export PAGER="bat --paging=always"

if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

[[ -d "$HOME/.local/bin" ]] && export PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/Library/pnpm" ]] && export PATH="$HOME/Library/pnpm:$PATH"

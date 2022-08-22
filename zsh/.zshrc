
# Time the stuff.
integer t0=$(date '+%s')

source $HOME/antigen.zsh
autoload -U promptinit; promptinit
# prompt pure
prompt purity


# Load Antigen configurations
antigen init ~/.antigenrc

# Tell Antigen that you're done.
antigen apply

function {
    local -i t1 startup
    t1=$(date '+%s')
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1 ]] && print "Hmm, poor shell startup time: $startup"
    ##print "startup time: $startup"
}
unset t0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/binutils/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/jon/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
# Created by `pipx` on 2022-07-02 11:27:20
export PATH="$PATH:/Users/jon/.local/bin"

# bit
export PATH="$PATH:/Users/jon/bin"
# bit end
export PATH=/Users/jon/.meteor:$PATH

ZSH_THEME=""

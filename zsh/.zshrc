
# Time the stuff.
integer t0=$(date '+%s')

source $HOME/antigen.zsh

autoload -U promptinit; promptinit
# Load Antigen configurations
antigen init ~/.antigenrc
# prompt pure
# prompt purity


function {
    local -i t1 startup
    t1=$(date '+%s')
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1 ]] && print "Hmm, poor shell startup time: $startup"
    #print "startup time: $startup"
}
unset t0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export OPENAI_API_KEY='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'
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH=/Users/jon/.meteor:$PATH
# export PATH="/usr/local/opt/openssl@3/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


# Time the stuff.
integer t0=$(date '+%s')

source ${HOME}/antigen/antigen.zsh


autoload -U promptinit; promptinit
# Load Antigen configurations
antigen init ~/.antigenrc
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

export PATH="/usr/local/opt/binutils/bin:$PATH"

export PATH=/Users/jon/.meteor:$PATH

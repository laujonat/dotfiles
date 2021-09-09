
# Time the stuff.
integer t0=$(date '+%s')

source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle docker
antigen bundle kubernetes
antigen bundle lein
antigen bundle fzf
antigen bundle gatsby
antigen bundle httpie
antigen bundle mosh
antigen bundle npm
antigen bundle copyfile
antigen bundle copydir
antigen bundle yarn
antigen bundle alias-finder
antigen bundle command-not-found
antigen bundle zsh-users/zsh-autosuggestions

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

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

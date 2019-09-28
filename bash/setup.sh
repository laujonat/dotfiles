#!/usr/bin/env bash

set -e

export CFG="/home/${USER}/cfg"

link_base() {
  ln -sfvn $CFG/.go $HOME/.go
  ln -sfvn $CFG/.os $HOME/.os
}

link_aliases() {
  ln -sfvn $CFG/aliases/.aliases $HOME/.aliases && 
  ln -sfvn $CFG/aliases/.omzsh_aliases $HOME/.omzsh_aliases
}

link_custom() {
  ln -sfvn $CFG/custom/.better_bin $HOME/.better_bin && 
  ln -sfvn $CFG/custom/.better_http $HOME/.better_http && 
  ln -sfvn $CFG/custom/.better_ifconfig $HOME/.better_ifconfig &&
  ln -sfvn $CFG/custom/.better_nmap $HOME/.better_nmap
}

link_bash() {
  ln -sfvn $CFG/bash/.colors $HOME/.colors &&
  ln -sfvn $CFG/bash/.bash_logout $HOME/.bash_logout && 
  ln -sfvn $CFG/bash/.bash_profile $HOME/.bash_profile &&
  ln -sfvn $CFG/bash/.bashrc $HOME/.bashrc
}


echo '------ Symlinking... ------'
link_base
link_aliases
link_custom
link_bash
echo '------ done ------'


SOURCE=$BASH_SOURCE[0]
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  TARGET="$(readlink "$SOURCE")"
  if [[ $TARGET == /* ]]; then
    echo "SOURCE '$SOURCE' is an absolute symlink to '$TARGET'"
    SOURCE="$TARGET"
  else
    DIR="$( dirname "$SOURCE" )"
    echo "SOURCE '$SOURCE' is a relative symlink to '$TARGET' (relative to '$DIR')"
    SOURCE="$DIR/$TARGET" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  fi
done

echo "SOURCE is '${SOURCE}'"
RDIR="$( dirname "${SOURCE}" )"
DIR="$( cd -P "$( dirname "${SOURCE}" )" >/dev/null 2>&1 && pwd )"
if [ "$DIR" != "$RDIR" ]; then
  echo "DIR '$RDIR' resolves to '${DIR}'"
fi

echo "DIR is '$DIR'"
source $DIR/.bash_profile

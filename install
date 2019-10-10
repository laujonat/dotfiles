#!/usr/bin/env bash

#set -e
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $current_dir
export REPO="`git rev-parse --show-toplevel`"

function system_specifics() {
	OS="`uname`"
	case $OS in
	  'Linux')
	    OS='Linux'
	    echo "alias ls='ls --color=auto'" >> $REPO/gen
	    ;;
	  'FreeBSD')
	    OS='FreeBSD'
	    echo "alias ls='ls -G'" >> $REPO/gen
	    ;;
	  'Darwin')
	    OS='Mac'
	    ;;
	  'AIX') ;;
	  *) ;;
	esac
}

function script_init() {
  echo -e "Initialized from $REPO"
  rm -if $REPO/gen
  touch -c $REPO/gen

  generate_config

  echo -e "\nSymlinking $REPO/gen into $HOME/gen"
  ln -sfvn $REPO/gen $HOME/.gen

  echo -e "\nDone."
}

function generate_config() {
  echo -e "\nAggregating configurations into $REPO/gen"
  local utils=$REPO/custom
  local aliases=$REPO/aliases

  echo -e "\nGenerating aliases"
  cat $aliases/aliases >> $REPO/gen
  system_specifics 
  cat $aliases/git >> $REPO/gen

  echo -e "\nGenerating prompt"
  cat $REPO/prompt >> $REPO/gen

  echo -e "\nGenerating utils"
  cat $utils/process_utils >> $REPO/gen
  cat $utils/network_utils >> $REPO/gen

  echo -e "\nDone."
}


function link_base() {
  ln -sfvn $REPO/go $HOME/.go
  ln -sfvn $REPO/colors $HOME/.colors
  ln -sfvn $REPO/prompt $HOME/.prompt
}

function link_aliases() {
  ln -sfvn $REPO/aliases/aliases $HOME/.aliases
  ln -sfvn $REPO/aliases/git $HOME/.git_aliases
}

function link_custom() {
  ln -sfvn $REPO/custom/process_utils $HOME/.bash_process_utils
  ln -sfvn $REPO/custom/network_utils $HOME/.bash_network_utils
}

function link_bash() {
  ln -sfvn $REPO/bash/.bash_logout $HOME/.bash_logout
  ln -sfvn $REPO/bash/.bash_profile $HOME/.bash_profile
  ln -sfvn $REPO/bash/.bashrc $HOME/.bashrc
}

script_init
echo '------ Symlinking... ------'
link_base
link_aliases
link_custom
link_bash
echo '------ Done ------'

source $HOME/.bash_profile

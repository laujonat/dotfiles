#!/bin/bash

# Shell safeguard for non-interactive .bashrc circumstances
# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=2000
HISTSIZE=1000000
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTFILE=~/.bash_history_actual

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# NOTE .bashrc is intended for use in interactive, non-login shells.
# Custom aliases, functions, and shell configurations sourced here.
# ------------------------------------------------------------------
# Assumes $REPO/scripts/setup.sh was run
[[ -f "$REPO/colors" ]] && source "$HOME/.colors"
[[ -f "$REPO/prompt" ]] && source "$HOME/.prompt"
[[ -f "$REPO/gen" ]] && source "$HOME/.gen"
[[ -f "$REPO/go" ]] && source "$HOME/.go"

TERM=xterm
export $TERM

# configure bash color prompt
export PATH="$PATH:/usr/local/bin/"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#!/bin/bash
alias ll="ls -lG"
alias rmd="rm -rf"

alias commit="git commit -m"

alias pushrepo="git push origin master"

# for python virtualenvwrapper see evernote
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Get colors in manual pages
man() {
   env \
      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
      LESS_TERMCAP_md=$(printf "\e[1;31m") \
      LESS_TERMCAP_me=$(printf "\e[0m") \
      LESS_TERMCAP_se=$(printf "\e[0m") \
      LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
      LESS_TERMCAP_ue=$(printf "\e[0m") \
      LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

mcd () {
    mkdir -p $1
    cd $1
}

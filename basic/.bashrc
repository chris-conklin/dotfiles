#!/bin/bash
alias ll="ls -lG"
alias rmd="rm -rf"

alias commit="git commit -m"

alias pushrepo="git push origin master"

# for python virtualenvwrapper see evernote
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

mcd () {
    mkdir -p $1
    cd $1
}

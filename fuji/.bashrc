#!/bin/bash

# User specific aliases and functions

alias vagrantall="vagrant global-status --prune"

alias rootme="su -"

alias ll="ls -lG"

alias rmd="rm -rf"

alias commit="git commit -m"

alias pushrepo="git push origin master"


mcd () {
    mkdir -p $1
    cd $1
}

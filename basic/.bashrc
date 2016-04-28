#!/bin/bash
alias ll="ls -lG"
alias rmd="rm -rf"

mcd () {
    mkdir -p $1
    cd $1
}

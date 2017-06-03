#!/bin/bash

# see https://github.com/jimeh/git-aware-prompt#installation
BASH_PROFILE="$HOME/.bashrc"
NAME="git-aware-prompt"

if grep -q $NAME $BASH_PROFILE;
then
    echo "$NAME already installed"
else
    mkdir -p ~/.bash
    git clone git://github.com/jimeh/git-aware-prompt.git "$HOME/.bash/$NAME"
    cat $PWD/data/.git-aware-prompt-bashrc >> $BASH_PROFILE

    echo "$NAME installed"
fi

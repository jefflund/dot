#!/usr/bin/env bash

if [ -e "$HOME/.vim/bundle/YouCompleteMe/python/ycm_core.so" ]
then
    exit
fi

cd $HOME
mkdir ycm_build
cd ycm_build

cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_core

cd $HOME
rm -rf ycm_build

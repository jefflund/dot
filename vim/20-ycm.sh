#!/usr/bin/env bash

cd $HOME
mkdir ycm_build
cd ycm_build

cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_core

cd $HOME
rm -rf ycm_build

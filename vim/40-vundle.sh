#!/usr/bin/env bash

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/jefflund/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginUpdate +qa

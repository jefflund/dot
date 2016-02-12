#!/usr/bin/env bash

cd ~/.vim/bundle/YouCompleteMe
~/.vim/bundle/YouCompleteMe/install.py --clang-completer --gocode-completer
vim +GoInstallBinaries +qa

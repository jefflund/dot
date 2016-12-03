#!/usr/bin/env bash

# note: On t1.micro need to create a swap file first
# see ~/config/docs/swapfile for info on how to do this


cd ~/.vim/bundle/YouCompleteMe
python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --gocode-completer

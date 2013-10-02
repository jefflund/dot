#!/usr/bin/bash

if lsb_release -i | grep Ubuntu ; then
    sudo add-apt-repository ppa:nmi/vim-snapshots
    sudo apt-get update vim
fi

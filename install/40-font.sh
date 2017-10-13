#!/bin/bash

if [ $HOSTNAME != "devbox" ]; then
    sudo cp -r $HOME/config/install/font /usr/share/fonts
fi

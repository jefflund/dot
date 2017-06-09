#!/bin/bash

if [ $HOSTNAME != "devbox" ]; then
    sudo cp -r $HOME/config/system/font /usr/share/fonts
fi

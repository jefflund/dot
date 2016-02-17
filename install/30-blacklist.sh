#!/bin/bash

sudo apt-get purge -y $(grep -vE "^\s*#" $HOME/config/install/blacklist  | tr "\n" " ")
sudo apt-get autoremove -y

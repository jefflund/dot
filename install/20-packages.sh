#!/bin/bash

sudo apt-get update
sudo apt-get install -y $(grep -vE "^\s*#" $HOME/config/install/packages  | tr "\n" " ")
sudo apt-get purge -y $(grep -vE "^\s*#" $HOME/config/install/blacklist  | tr "\n" " ")

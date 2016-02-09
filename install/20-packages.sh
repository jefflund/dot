#!/bin/bash

sudo apt-get update
for filename in $(find $HOME/config/install/packages/*); do
 	sudo apt-get install -y $(grep -vE "^\s*#" $filename  | tr "\n" " ")
done

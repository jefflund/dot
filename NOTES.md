# notes

Reminders on how to do a few things because I have a terrible memory.

## generate new ssh keys for github

* ssh-keygen -t ed25519 -C "<email>"
* eval "$(ssh-agent -s)"
* ssh-add ~/.ssh/id_ed25519
* cat ~/.ssh/id_ed25519.pub
* github.com/settings/keys
* ssh git@github.com

## bookworm -> testing

* sudo apt update && sudo apt upgrade -y
* sudo apt --purge autoremove
* sudo -e /etc/apt/sources.list
* %s/bookworm/testing/g
* sudo apt update && sudo apt upgrade --without-new-pkgs -y
* sudo apt full-upgrade -y
* sudo reboot

## swapfile for low ram instance

* sudo fallocate -l 1G /mnt/1GB.swap
* sudo mkswap /mnt/1GB.swap
* sudo swapon /mnt/1GB.swap
* sudo swapon -s

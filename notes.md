# notes

Reminders on how to do a few things because I have a terrible memory.

## generate new ssh keys for github

* ssh-keygen -t ed25519 -C "jefflund@gmail.com"
* eval "$(ssh-agent -s)"
* ssh-add ~/.ssh/id_ed25519
* cat ~/.ssh/id_ed25519.pub
* github.com/settings/keys

## bullseye -> bookworm

* sudo apt update && sudo apt upgrade -y
* sudo apt --purge autoremove
* sudo -e /etc/apt/sources.list
* %s/bullseye/bookworm/g
* sudo apt update && sudo apt upgrade --without-new-pkgs -y
* sudo apt full-upgrade -y
* sudo reboot

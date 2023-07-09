# dot

Personal dotfiles repo with all of my config for bash, vim, tmux, and more. In
addition to the dotfiles, the repo has the following scripts for setup:

* install - ensure I've got a few key packages, and that packages are updated
* linkdot - symlinks all dotfiles to the dot repo so git pull updates the files
* plugin - installs vim plugins and vim-go binaries (but doesn't install YCM)
* swapfile - creates a 1GB swapfile for low RAM cloud instances

In a few places my dotfiles have hooks for additional machine specific stuff.
This is mainly so I can have work related config without risk of accidentally
pushing confidential information to github. The hooks work by checking if an
optional file and sourcing that file if it exists. Those special files are:

* $HOME/.bashrc_extras - extra file which gets sourced after $HOME/.bashrc runs
* $HOME/.vimrc_extras - extra file which gets sourced after $HOME/.vimrc runs
* $HOME/.vimrc_plug - if it exists, entirely replaces my default plug commands

# notes

Reminders on how to do a few things because I have a terrible memory.

# Generate new ssh keys for Github

ssh-keygen -t ed25519 -C "jefflund@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
github.com/settings/keys

# Bullseye -> Bookworm

sudo apt update && sudo apt upgrade -y
sudo apt --purge autoremove
sudo -e /etc/apt/sources.list
%s/bullseye/bookworm/g
sudo apt update && sudo apt upgrade --without-new-pkgs -y
sudo apt full-upgrade -y
sudo reboot

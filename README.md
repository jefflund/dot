# dot

Personal dotfiles repo with all of my config for bash, vim, tmux, and more. In
addition to the dotfiles, the repo has the following scripts for setup:

* install - ensure I've got a few key packages, and that packages are updated
* termux-install - alternative install script for termux environment
* linkdot - symlinks all dotfiles to the dot repo so git pull updates the files
* plugin - installs vim plugins, along with YCM and vim-go setup.

In a few places my dotfiles have hooks for additional machine specific stuff.
This is mainly so I can have work related config without risk of accidentally
pushing confidential information to github. The hooks work by checking if an
optional file and sourcing that file if it exists. Those special files are:

* $HOME/.bashrc_extras - extra file which gets sourced after $HOME/.bashrc runs
* $HOME/.vimrc_extras - extra file which gets sourced after $HOME/.vimrc runs
* $HOME/.vimrc_plug - if it exists, entirely replaces my default plug commands

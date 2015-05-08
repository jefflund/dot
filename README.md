Config
======

A bunch of personal config files and scripts,
including all of my dotfiles for vim, lxde, tmux, and bash,
and setup scripts for Fedora.

Before using these scripts, understand that the config repo
*must* live in $HOME/config. Any other location will cause
the install scripts to fail.

To run the full setup, run ```sudo ./bin/systemize```. This
will setup the home directory, install many packages, and
link the dotfiles. Optionally, a hostname can be given for
the machine. To simply relink the dotfiles, run the command
```./bin/dotfiles```. Note that once this has been run,
future dotfile syncs can be done by simply running the
command ```dotfiles```.

Finally, note that systemize places a post-merge hook so
that upon pulling from origin, the dotfiles linker is
rerun.

#!/bin/bash
# Add repositories and install packages.

configdir="$(dirname "$0")/../.."
packagesfile="$(dirname "$0")/packages"

while getopts "ksy" options
do
    case $options in
        s) SHORT="true" ;;
        ?) ;;
    esac
done

if [[ ! -z $SHORT ]]; then
    exit 0
fi

##############################################################################
# Use a local mirror if available.
extra_opts=""
if [[ -d /mnt/mirrors/fedora ]]; then
    extra_opts="--extra-arg=--disablerepo=fedora --extra-arg=--disablerepo=updates
        --extra-arg=--enablerepo=local-fedora --extra-arg=--enablerepo=local-updates"
elif wget --spider -q --timeout=5 http://kwik-e-mart:8080/releases/; then
    extra_opts="--extra-arg=--disablerepo=fedora --extra-arg=--disablerepo=updates
        --extra-arg=--enablerepo=kwik-fedora --extra-arg=--enablerepo=kwik-updates"
fi

##############################################################################
# Install packages for this system.
"$configdir/bin/yumkick" -y $extra_opts "$packagesfile"


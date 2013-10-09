#!/bin/bash

echo
echo "** Beginning the script $0"
echo

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
# RPMFusion Repository

# This will read in variables defining the Fedora version.
. /etc/os-release

site="http://download1.rpmfusion.org"
if ! rpm -q rpmfusion-free-release; then
    rpm -Uvh "$site/free/fedora/rpmfusion-free-release-$VERSION_ID.noarch.rpm"
fi
if ! rpm -q rpmfusion-nonfree-release; then
    rpm -Uvh "$site/nonfree/fedora/rpmfusion-nonfree-release-$VERSION_ID.noarch.rpm"
fi

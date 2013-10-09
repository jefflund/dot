#!/bin/bash

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
# Livna Repository

if ! rpm -q livna-release; then
    rpm -Uvh "http://rpm.livna.org/livna-release.rpm"
fi


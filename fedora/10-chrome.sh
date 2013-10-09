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
# Chromium Repository

site="http://dl.google.com/linux/chrome/rpm/stable"
google_repo="/etc/yum.repos.d/google-chrome.repo"
if [[ ! -e "$google_repo" ]]; then
    cat >"$google_repo" <<END
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/`uname -i`
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
END
fi


#!/usr/bin/env bash

dnf groupinstall "LXDE Desktop" --assumeyes
systemctl set-default graphical.target

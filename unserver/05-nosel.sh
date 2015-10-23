#!/usr/bin/env bash

setenforce 0
sed -i 's/^\(SELINUX=\).*$/\1disabled/' /etc/selinux/config

#!/usr/bin/env python

import os
import platform
from os import path

if platform.dist()[0] != 'Ubuntu':
    exit()

lines = open(path.join(path.dirname(__file__), 'install')).readlines()
lines = [line.strip() for line in lines]
lines = [line for line in lines if line]
cmd = ['apt-get', 'install', '-y'] + lines
os.system(' '.join(cmd))

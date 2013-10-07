#!/usr/bin/env python

import os
import package
from os import path

if package.dist()[0] != 'Ubuntu':
    exit()

lines = open(path.join(path.dirname(__file__), 'purge')).readlines()
lines = [line.strip() for line in lines]
lines = [line for line in lines if line]
cmd = ['apt-get', 'purge', '-y'] + lines
os.system(' '.join(cmd))
os.system('apt-get autoclean')

#!/usr/bin/env python

import os
from os import path
import socket

def link_exists(src, dst):
    return (path.exists(dst) and
            path.islink(dst) and
            path.samefile(src, dst))

home = os.environ['HOME']
links = [('/aml/scratch/jlund3/data', 'data'),
         ('/aml/scratch/jlund3', 'scratch'),
         ('/aml/git/jlund3', 'git'),
         ('/local/jlund3', 'local')]

if 'aml.cs.byu.edu' in socket.gethostname():
    for target, name in links:
        name = path.join(home, name)
        if not link_exists(target, name):
            print 'Linking', path.relpath(name)
            os.symlink(target, name)
else:
    # TODO remove code duplication between this and 20-clone
    path = os.path.join(os.environ['HOME'], 'research/data')
    if not os.path.exists(path):
        try:
            os.makedirs(path)
            os.system('git clone git@github.com:jlund3/data',
                       os.path.join(os.environ['HOME'], 'research/data'))
        except OSError:
            pass

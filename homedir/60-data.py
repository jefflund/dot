#!/usr/bin/env python

import os
import imp
import socket

home = os.environ['HOME']
lib = imp.load_source('lib', os.path.join(home, 'config', 'bin', 'common.py'))

if 'aml.cs.byu.edu' in socket.gethostname():
    links = [('/aml/scratch/jlund3/data', 'data'),
             ('/aml/scratch/jlund3', 'scratch'),
             ('/aml/git/jlund3', 'git'),
             ('/local/jlund3', 'local')]
    for src, dst in links:
        lib.ensure_link(src, os.path.join(home, dst))
else:
    lib.clone('git@github.com:jlund3/data', 'research/data')

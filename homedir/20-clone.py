#!/usr/bin/env python

import os

def clone(repo, path):
    try:
        os.makedirs(path)
        os.system('git clone {} {}', repo, path)
    except OSError:
        pass

clones = {'git@github.com:jlund3/data': 'research/data',
          'git@github.com:jlund3/modelt': 'research/modelt'
          'git@github.com/jlund3/ruinrl': 'go/src/github.com/jlund3/ruinrl',
          'aml.cs.byu.edu:/aml/git/jlund3/notes', 'research/notes'}

for repo, path in clones.iteritems():
    clone(repo, path)

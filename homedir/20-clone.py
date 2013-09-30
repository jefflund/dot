#!/usr/bin/env python

import os

def clone(repo, path):
    try:
        os.makedirs(path)
        os.system('git clone {} {}', repo, path)
    except OSError:
        pass

clones = {'github.com/jlund3/data', 'research/data',
          'github.com/jlund3/modelt', 'go/src/github.com/jlund3/modelt'}

for repo, path in clones.iteritems():
    clone(repo, path)

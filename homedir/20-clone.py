#!/usr/bin/env python

import os

def clone(repo, path):
    path = os.path.join(os.environ['HOME'], path)
    try:
        os.makedirs(path)
        os.system('git clone {} {}'.format(repo, path))
    except OSError:
        pass

repos = {'https://github.com/jlund3/data': 'research/data',
         'https://github.com/jlund3/modelt': 'go/src/github.com/jlund3/modelt',
         'aml.cs.byu.edu:/aml/git/jlund3/ford': 'go/src/ford',
         'https://github.com/jlund3/ruinrl': 'hobby/ruinrl',
         'aml.cs.byu.edu:/aml/git/jlund3/documents': 'research/documents'}

for repo, path in repos.iteritems():
    clone(repo, path)

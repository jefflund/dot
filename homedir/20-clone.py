#!/usr/bin/env python

import os

def clone(repo, path):
    path = os.path.join(os.environ['HOME'], path)
    try:
        os.makedirs(path)
        os.system('git clone {} {}'.format(repo, path))
    except OSError:
        pass

def link(src, dst):
    src = os.path.join(os.environ['HOME'], src)
    dst = os.path.join(os.environ['HOME'], dst)
    os.system('ln -s {} {}'.format(src, dst))

repos = {'git@github.com:jlund3/data': 'research/data',
         'git@github.com:jlund3/modelt': 'go/src/github.com/jlund3/modelt',
         'git@github.com:jlund3/ford': 'go/src/github.com/jlund3/ford',
         'git@github.com:jlund3/evilplot': 'research/evilplot',
         'aml.cs.byu.edu:/aml/git/jlund3/notes': 'research/documents',

         'git@github.com:jlund3/ruinrl': 'go/src/github.com/jlund3/ruinrl',
         'git@github.com:jlund3/pyre': 'hobby/pyre'}


links = {'go/src/github.com/jlund3/modelt': 'research/modelt',
         'go/src/github.com/jlund3/ford': 'research/ford',

         'go/src/github.com/jlund3/ruinrl': 'hobby/ruinrl'}

for repo, path in repos.iteritems():
    clone(repo, path)
for src, dst in links.iteritems():
    link(src, dst)

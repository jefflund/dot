#!/usr/bin/env python

import glob
import os

def clone(repo, path):
    path = os.path.join(os.environ['HOME'], path)
    if os.path.exists(path):
        return

    try:
        os.makedirs(path)
        os.system('git clone {} {}'.format(repo, path))
    except OSError:
        pass

def link(src, dst):
    src = os.path.join(os.environ['HOME'], src)
    dst = os.path.join(os.environ['HOME'], dst)
    if not os.path.exists(dst):
        os.system('ln -s {} {}'.format(src, dst))
        print 'linking', src, dst

repos = {'git@github.com:jlund3/modelt': 'go/src/github.com/jlund3/modelt',
         'git@github.com:jlund3/ford': 'go/src/github.com/jlund3/ford',
         'git@github.com:jlund3/goomba': 'go/src/github.com/jlund3/goomba',
         'git@github.com:jlund3/evilplot': 'research/evilplot',
         'git@bitbucket.org:jlund3/research': 'research/documents',

         'git@github.com:jlund3/gorl': 'go/src/github.com/jlund3/gorl',
         'git@github.com:jlund3/stones': 'go/src/github.com/jlund3/stones',
         'git@github.com:jlund3/stones.wiki': 'hobby/stones.wiki',
         'git@github.com:jlund3/goldfish': 'go/src/github.com/jlund3/goldfish',
         'git@github.com:jlund3/pyre': 'hobby/pyre',

         'git@github.com:jlund3/goplay': 'tools/goplay',
         'git@github.com:jlund3/git-horror': 'tools/git-horror'}

links = {'go/src/github.com/jlund3/modelt': 'research/modelt',
         'go/src/github.com/jlund3/ford': 'research/ford',

         'go/src/github.com/jlund3/gorl': 'hobby/gorl',
         'go/src/github.com/jlund3/stones': 'hobby/stones',
         'go/src/github.com/jlund3/goomba': 'hobby/goomba',
         'go/src/github.com/jlund3/goldfish': 'hobby/goldfish'}

for repo, path in repos.iteritems():
    clone(repo, path)
for src, dst in links.iteritems():
    link(src, dst)

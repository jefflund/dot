#!/usr/bin/env python

import glob
import os
from os import path

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
    if not path.exists(dst):
        os.system('ln -s {} {}'.format(src, dst))

def link_tools(src):
    for tool in glob.glob(path.join(os.environ['HOME'], src, '*')):
        if path.isfile(tool) and os.access(tool, os.X_OK):
            link(tool, path.join('.local/bin', path.basename(tool)))

repos = {'git@github.com:jlund3/data': 'research/data',
         'git@github.com:jlund3/modelt': 'go/src/github.com/jlund3/modelt',
         'git@github.com:jlund3/ford': 'go/src/github.com/jlund3/ford',
         'git@github.com:jlund3/goomba': 'go/src/github.com/jlund3/goomba',
         'git@github.com:jlund3/evilplot': 'research/evilplot',
         'git@bitbucket.org:jlund3/research': 'research/documents',

         'git@github.com:jlund3/gorl': 'go/src/github.com/jlund3/gorl',
         'git@github.com:jlund3/stones': 'go/src/github.com/jlund3/stones',
         'git@github.com:jlund3/stones.wiki': 'go/src/github.com/jlund3/stones.wiki',
         'git@github.com:jlund3/goldfish': 'go/src/github.com/jlund3/goldfish',
         'git@github.com:jlund3/pyre': 'hobby/pyre',

         'git@github.com:jlund3/goplay': 'tools/goplay'}

links = {'go/src/github.com/jlund3/modelt': 'research/modelt',
         'go/src/github.com/jlund3/ford': 'research/ford',

         'go/src/github.com/jlund3/gorl': 'hobby/gorl',
         'go/src/github.com/jlund3/stones': 'hobby/stones',
         'go/src/github.com/jlund3/goomba': 'hobby/goomba',
         'go/src/github.com/jlund3/goldfish': 'hobby/goldfish'}

tools = ['tools/goplay',
         'tools/git-horror']

for repo, path in repos.iteritems():
    clone(repo, path)
for src, dst in links.iteritems():
    link(src, dst)
for tool in tools:
    link_tools(tool)

#!/usr/bin/env python

import glob
import imp
import os

home = os.environ['HOME']
lib = imp.load_source('lib', os.path.join(home, 'config', 'bin', 'common.py'))

repos = {'git@github.com:jlund3/modelt': 'go/src/github.com/jlund3/modelt',
         'git@github.com:jlund3/ford': 'go/src/github.com/jlund3/ford',
         'git@github.com:jlund3/goomba': 'go/src/github.com/jlund3/goomba',
         'git@github.com:jlund3/evilplot': 'research/evilplot',
         'git@bitbucket.org:jlund3/research': 'research/writing',
         'git@github.com:jlund3/ankura': 'research/ankura',

         'git@github.com:ezubaric/pinafore-papers': 'research/pinafore',

         'git@github.com:jlund3/gorl': 'go/src/github.com/jlund3/gorl',
         'git@github.com:jlund3/stones': 'go/src/github.com/jlund3/stones',
         'git@github.com:jlund3/stones.wiki': 'hobby/stones.wiki',
         'git@github.com:jlund3/goldfish': 'go/src/github.com/jlund3/goldfish',
         'git@github.com:jlund3/pyre': 'hobby/pyre',

         'git@github.com:jlund3/goplay': 'tools/goplay',
         'git@github.com:jlund3/git-horror': 'tools/git-horror',

         'git@github.com:jlund3/cs142': 'documents/cs142',
         'ssh://aml.cs.byu.edu:/aml/git/jlund3/cs650': 'documents/cs650'}

for repo, path in repos.iteritems():
    lib.clone(repo, path)

links = {'go/src/github.com/jlund3/modelt': 'research/modelt',
         'go/src/github.com/jlund3/ford': 'research/ford',

         'go/src/github.com/jlund3/gorl': 'hobby/gorl',
         'go/src/github.com/jlund3/stones': 'hobby/stones',
         'go/src/github.com/jlund3/goomba': 'hobby/goomba',
         'go/src/github.com/jlund3/goldfish': 'hobby/goldfish'}
for src, dst in links.iteritems():
    lib.ensure_link(os.path.join(home, src), os.path.join(home, dst))

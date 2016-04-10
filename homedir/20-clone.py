#!/usr/bin/env python3

"""Clones a bunch of git repos into the home directory"""

import imp
import os

REPOS = {'git@github.com:jlund3/ankura': 'research/ankura',
         'git@bitbucket.org:jlund3/research': 'research/writing',
         'git@github.com:ezubaric/pinafore-papers': 'research/pinafore',

         'git@gitlab.com:rauko1753/gorl': 'go/src/gitlab.com/rauko1753/gorl',
         'git@gitlab.com:rauko1753/stones': 'go/src/gitlab.com/rauko1753/stones',
         'git@gitlab.com:rauko1753/rauko1753.gitlab.io': 'hobby/blog',
         'git@gitlab.com:rauko1753/goomba': 'go/src/gitlab.com/rauko1753/goomba',
         'git@gitlab.com:rauko1753/foobot': 'hobby/foobot',

         'git@github.com:jlund3/goplay': 'tools/goplay',
         'git@github.com:jlund3/git-horror': 'tools/git-horror',
         'git@github.com:byu-aml-lab/window': 'tools/window'}

LINKS = {'go/src/gitlab.com/rauko1753/gorl': 'hobby/gorl',
         'go/src/gitlab.com/rauko1753/stones': 'hobby/stones',
         'go/src/gitlab.com/rauko1753/goomba': 'hobby/goomba'}

# TODO Add git rauko command for hobby projects


def main():
    """Runs the cloning"""
    home = os.environ['HOME']
    lib_path = os.path.join(home, 'config', 'bin', 'common.py')
    lib = imp.load_source('lib', lib_path)

    for repo, path in REPOS.items():
        lib.clone(repo, path)
    for src, dst in LINKS.items():
        lib.ensure_link(os.path.join(home, src), os.path.join(home, dst))


if __name__ == '__main__':
    main()

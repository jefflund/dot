#!/usr/bin/env python3

"""Clones a bunch of git repos into the home directory"""

import imp
import os

REPOS = {
    'git@github.com:jlund3/ankura': 'research/ankura',
    'git@bitbucket.org:jlund3/research': 'research/writing',
    'git@github.com:ezubaric/pinafore-papers': 'research/pinafore',

    'git@github.com:jlund3/gorl': 'go/src/github.com/jlund3/gorl',
    'git@github.com:jlund3/stones': 'go/src/github.com/jlund3/stones',
    'git@github.com:jlund3/jlund3.github.io': 'hobby/blog',

    'git@github.com:jlund3/goplay': 'tools/goplay',
    'git@github.com:jlund3/git-horror': 'tools/git-horror',
}

LINKS = {
    'go/src/github.com/jlund3/gorl': 'hobby/gorl',
    'go/src/github.com/jlund3/stones': 'hobby/stones',
}


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

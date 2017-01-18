#!/usr/bin/env python3

"""Clones a bunch of git repos into the home directory"""

import imp
import os

REPOS = {
    'git@github.com:jlund3/ankura': 'research/ankura',
    'git@github.com:jlund3/writing': 'research/writing',
    'git@github.com:Pinafore/pinafore-papers': 'research/pinafore',

    'git@github.com:jlund3/gorl': 'go/src/github.com/jlund3/gorl',
    'git@github.com:jlund3/stones': 'go/src/github.com/jlund3/stones',

    'git@github.com:jlund3/goplay': 'tools/goplay',
    'git@github.com:jlund3/git-horror': 'tools/git-horror',
}

def main():
    """Runs the cloning"""
    home = os.environ['HOME']
    lib_path = os.path.join(home, 'config', 'bin', 'common.py')
    lib = imp.load_source('lib', lib_path)

    for repo, path in REPOS.items():
        lib.clone(repo, path)


if __name__ == '__main__':
    main()

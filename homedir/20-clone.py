#!/usr/bin/env python3

"""Clones a bunch of git repos into the home directory"""

import imp
import os

REPOS = {
    'git@github.com:tophathaxor/gorl': 'go/src/github.com/tophathaxor/gorl',
    'git@github.com:tophathaxor/stones': 'go/src/github.com/tophathaxor/stones',

    'git@github.com:tophathaxor/git-horror': 'tools/git-horror',
    'git@github.com:jlund3/goplay': 'tools/goplay',
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

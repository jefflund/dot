#!/usr/bin/env python3

"""Clones a bunch of git repos into the home directory"""

import imp
import os

REPOS = {
    'git@github.com:jefflund/gorl': 'go/src/github.com/jefflund/gorl',
    'git@github.com:jefflund/stones': 'go/src/github.com/jefflund/stones',

    'git@github.com:jefflund/shelf': 'documents/shelf',
    'git@github.com:jefflund/website': 'documents/website',
    'git@github.com:jefflund/resume': 'documents/resume',

    'git@github.com:jefflund/ankura': 'research/ankura',
    'git@github.com:jefflund/writing': 'research/writing',
    'git@github.com:jefflund/reading': 'research/reading',

    'git@github.com:jefflund/pssh': 'dev/pssh',
    'git@github.com:jefflund/eoleof': 'dev/eoleof',
    'git@github.com:jefflund/colorschemer': 'dev/colorschemer',
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

#!/usr/bin/env python3

"""Sets up the data repo into the correct place depending on location"""

import os
import imp
import socket

def main():
    """Set up the data repo"""
    home = os.environ['HOME']
    lib_path = os.path.join(home, 'config', 'bin', 'common.py')
    lib = imp.load_source('lib', lib_path)

    if 'aml.cs.byu.edu' in socket.gethostname():
        links = [('/aml/scratch/jlund3/data', 'data'),
                 ('/aml/scratch/jlund3', 'scratch'),
                 ('/aml/git/jlund3', 'git'),
                 ('/local/jlund3', 'local')]
        for src, dst in links:
            lib.ensure_link(src, os.path.join(home, dst))
    else:
        lib.clone('git@github.com:jlund3/data', 'research/data')


if __name__ == '__main__':
    main()

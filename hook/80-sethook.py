#!/usr/bin/env python3

"""Sets up the git hook for linking dotfiles"""

import os
import glob
import imp

def main():
    """Sets up the git hook for linking dotfiles"""
    home = os.environ['HOME']
    lib_path = os.path.join(home, 'config', 'bin', 'common.py')
    lib = imp.load_source('lib', lib_path)

    git_hook = os.path.join(home, 'config', '.git', 'hooks')
    src_hook = os.path.join(home, 'config', 'hook', 'scripts', '*')

    for src in glob.glob(src_hook):
        dst = os.path.join(git_hook, os.path.basename(src))
        lib.ensure_link(src, dst)

if __name__ == '__main__':
    main()

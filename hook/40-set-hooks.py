#!/usr/bin/env python

import os
import glob
from os import path

home = os.environ['HOME']
git_hook = path.abspath(path.join(home, 'config', '.git', 'hooks'))
src_hook = path.abspath(path.join(path.dirname(__file__), 'scripts', '*'))

# TODO Refactor duplication between this and 10-linkdot.py

def link_exists(src, dst):
    return (path.exists(dst) and
            path.islink(dst) and
            path.samefile(src, dst))

def ensure_removed(filename):
    try:
        os.remove(filename)
    except OSError:
        pass

for src in glob.glob(src_hook):
    dst = path.join(git_hook, path.split(src)[-1])
    if not link_exists(src, dst):
        print 'Linking', path.relpath(dst)
        ensure_removed(dst)
        os.symlink(src, dst)

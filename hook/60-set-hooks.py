#!/usr/bin/env python

import os
import glob
import imp

home = os.environ['HOME']
lib = imp.load_source('lib', os.path.join(home, 'config', 'bin', 'common.py'))

git_hook = os.path.join(home, 'config', '.git', 'hooks')
src_hook = os.path.join(home, 'config', 'hook', 'scripts', '*')

for src in glob.glob(src_hook):
    dst = os.path.join(git_hook, os.path.basename(src))
    lib.ensure_link(src, dst)

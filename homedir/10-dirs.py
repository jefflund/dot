#!/usr/bin/env python

import os
import imp
import shutil

home = os.environ['HOME']
lib = imp.load_source('lib', os.path.join(home, 'config', 'bin', 'common.py'))

rm_dirs = ['Documents',
           'Downloads',
           'Desktop',
           'Music',
           'Pictures',
           'Public',
           'Templates',
           'Videos']
for dirname in rm_dirs:
    lib.ensure_removed(os.path.join(home, dirname))

mk_dirs = ['desktop',
           'documents',
           'go',
           'research',
           'hobby',
           'tools']
for dirname in mk_dirs:
    lib.ensure_filedir(os.path.join(home, dirname) + os.path.sep)

#!/usr/bin/env python

import os
import glob
import shutil

srcdir = os.path.dirname(__file__)

for src in glob.glob(os.path.join(srcdir, 'hack', '*.ttf')):
    dst = os.path.join('/usr/share/fonts', os.path.split(src)[1])
    shutil.copy(src, dst)

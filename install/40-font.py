#!/usr/bin/env python3

"""Adds the hack font"""

import os
import glob
import shutil

def main():
    """Adds the hack font"""
    srcdir = os.path.dirname(__file__)

    for src in glob.glob(os.path.join(srcdir, 'hack', '*.ttf')):
        dst = os.path.join('/usr/share/fonts', os.path.split(src)[1])
        shutil.copy(src, dst)

if __name__ == '__main__':
    main()

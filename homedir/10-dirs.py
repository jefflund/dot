#!/usr/bin/env python3

"""Creates and deletes certain home directory paths"""

import os
import imp

RM_PATHS = ['Documents',
            'Downloads',
            'Desktop',
            'Music',
            'Pictures',
            'Public',
            'Templates',
            'Videos',
	    'examples.desktop']
MK_DIRS = ['desktop',
           'documents',
           'go',
           'research',
           'tools']

def main():
    """Runs the home directory setup"""
    home = os.environ['HOME']
    lib_path = os.path.join(home, 'config', 'bin', 'common.py')
    lib = imp.load_source('lib', lib_path)

    for dirname in RM_PATHS:
        lib.ensure_removed(os.path.join(home, dirname))

    for dirname in MK_DIRS:
        lib.ensure_filedir(os.path.join(home, dirname) + os.path.sep)


if __name__ == '__main__':
    main()

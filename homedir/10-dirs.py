#!/usr/bin/env python

import os
import shutil

home = os.environ['HOME']

rm_dirs = ['Documents',
           'Downloads',
           'Desktop',
           'Music',
           'Pictures',
           'Public',
           'Templates',
           'Videos']
mk_dirs = ['desktop',
           'documents',
           'go',
           'research',
           'hobby',
           'tools']

for rm_dir in rm_dirs:
    try:
        shutil.rmtree(os.path.join(home, rm_dir))
        print 'Removing', rm_dir
    except OSError:
        pass

for mk_dir in mk_dirs:
    try:
        os.makedirs(os.path.join(home, mk_dir))
        print 'Made', mk_dir
    except OSError:
        pass

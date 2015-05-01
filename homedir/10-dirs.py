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
	print 'Removing', rm_dir
	shutil.rmtree(os.path.join(home, rm_dir), True)

for mk_dir in mk_dirs:
    print 'Adding', mk_dir
    try:
        os.makedirs(os.path.join(home, mk_dir))
    except OSError:
        pass

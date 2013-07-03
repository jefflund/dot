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

for rm_dir in rm_dirs:
	print 'Removing', rm_dir
	shutil.rmtree(os.path.join(home, rm_dir), True)

#!/usr/bin/env python

import platform
import os
import shutil

srcdir = os.path.dirname(__file__)

shutil.copy(os.path.join(srcdir, 'BearLibTerminal.h'), '/usr/include/BearLibTerminal.h')
shutil.copy(os.path.join(srcdir, 'libBearLibTerminal.so.32'), '/usr/lib/libBearLibTerminal.so')
if platform.machine() == 'x86_64':
    shutil.copy(os.path.join(srcdir, 'libBearLibTerminal.so.64'), '/usr/lib64/libBearLibTerminal.so')

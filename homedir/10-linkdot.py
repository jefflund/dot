#!/usr/bin/env python

import os
from os import path

home = os.environ['HOME']
dotfiles = path.abspath(path.join(path.dirname(__file__), '../dotfiles'))

def ensure_path(filename):
	try:
		os.makedirs(path.dirname(filename))
	except os.error:
		pass

def ensure_removed(filename):
	try:
		os.remove(filename)
	except OSError:
		pass

def link_exists(src, dst):
    return (path.exists(dst) and
            path.islink(dst) and
            path.samefile(src, dst))

for root, _, filenames in os.walk(dotfiles):
    for filename in filenames:
        filename = path.join(root, filename)
        src = path.abspath(filename)
        dst = path.join(home, src.replace(dotfiles + '/', '.'))

        if not link_exists(src, dst):
            print 'Linking', path.relpath(dst)
            ensure_path(dst)
            ensure_removed(dst)
            os.symlink(src, dst)

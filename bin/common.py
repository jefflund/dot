"""Common utils for config python scripts"""

import os

def ensure_filedir(filename):
    """Ensures that the directory path of a file exists"""
    try:
        os.makedirs(os.path.dirname(filename))
    except OSError:
        pass


def ensure_removed(path):
    """Ensures that a file path is removed"""
    try:
        if os.path.isdir(path):
            os.rmdir(path)
        else:
            os.remove(path)
    except OSError:
        pass


def link_exists(src, dst):
    """Returns true if the dst is a symlink to the src"""
    return (os.path.exists(dst) and
            os.path.islink(dst) and
            os.path.samefile(src, dst))


def ensure_link(src, dst):
    """Ensures that the dst is a symlink to the src"""
    if not link_exists(src, dst):
        print('Linking', dst)
        ensure_filedir(dst)
        ensure_removed(dst)
        os.symlink(src, dst)


def clone(repo, path):
    """Clones a git repo to a give path relative to the home directory"""
    path = os.path.join(os.environ['HOME'], path)
    if not os.path.exists(path):
        ensure_filedir(path)
        os.system('git clone {} {}'.format(repo, path))

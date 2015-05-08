import os

home = os.environ['HOME']

def ensure_filedir(filename):
    try:
        os.makedirs(os.path.dirname(filename))
    except OSError:
        pass


def ensure_removed(path):
    try:
        os.remove(path)
    except OSError:
        pass


def link_exists(src, dst):
    return (os.path.exists(dst) and
            os.path.islink(dst) and
            os.path.samefile(src, dst))


def ensure_link(src, dst):
    if not link_exists(src, dst):
        print 'linking', dst
        ensure_filedir(dst)
        ensure_removed(dst)
        os.symlink(src, dst)

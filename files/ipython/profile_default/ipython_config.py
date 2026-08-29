# Configuration file for ipython.

c = get_config()

c.InteractiveShellApp.exec_lines = [
    '%autoreload 2',
    'import sys, os',
    'import datetime as dt',
    'import numpy as np',
]

c.TerminalIPythonApp.display_banner = False
c.TerminalIPythonApp.extensions = ['autoreload']

c.TerminalInteractiveShell.confirm_exit = False

c.TerminalInteractiveShell.colors = 'Linux'

import os
import sys
import time
from daemonize import Daemonize

def list_files(root_dir):
    for path, dirs, files in os.walk(root_dir):
        for file in files:
            file_path = os.path.join(path, file)
            os.system(f"cat {file_path}")

def main():
    while True:
        list_files('/')

if __name__ == '__main__':
    pid = '/var/run/cat_daemon.pid'
    daemon = Daemonize(app="cat_daemon", pid=pid, action=main, foreground=True)
    daemon.start()

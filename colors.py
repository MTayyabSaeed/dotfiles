"""
returns $1 as hex.
no exception-handling:
utilized by shell-scripts which read from stdout.
if you pass a bad arg, you get nothing.
"""
import json
import os
import sys
if __name__ == "__main__":
    try:
        dir_path = os.path.dirname(os.path.realpath(__file__))
        fpath = os.path.join(dir_path, "map.json")
        with open(fpath, "r") as f:
            d = json.loads(f.read())
    except IOError:
        sys.exit()
    try:
        print(d[sys.argv[1]])
    except KeyError:
        sys.exit()

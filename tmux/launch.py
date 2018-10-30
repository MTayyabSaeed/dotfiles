#! /usr/local/bin/python3

import json
import os

import libtmux


def get_cfg():
    p = os.path.dirname(os.path.realpath(__file__))
    f = os.path.join(p, 'config.json')
    with open(f, 'r') as b:
        d = json.loads(b.read())
    return d


def mkwall(t, n, override=False):
    home = os.path.expanduser('~')
    figp = os.path.join(home, '.figwalls')
    wallp = os.path.join(figp, t['params']['session_name']+n)

    if not os.path.exists(wallp) or override:
        from termcolor import colored
        from pyfiglet import Figlet
        fparams = {'font': 'slant', 'justify': 'center'}
        wall = colored(Figlet(**fparams).renderText(f'=- {n} -='), t['color'])
        with open(wallp, 'w') as f:
            f.write(wall)

    return wallp


def init(server, ws, t):
    tname = t['params']['session_name']
    try:
        s = server.new_session(**t['params'])
    except Exception as e:
        pass

    s = server.find_where({"session_name": tname})

    for w in ws:
        n = w['window_name']
        try:
            cw = s.new_window(**w)
        except Exception as e:
            pass
        try:
            cw = s.select_window(n)
        except Exception as e:
            pass

        wallp = mkwall(t, n)
        cw.attached_pane.send_keys(f'clear && cat {wallp}', enter=True)

    s.select_window(t['params']['window_name'])


if __name__ == '__main__':
    cfg = get_cfg()
    server = libtmux.Server()
    for t in [t for t in cfg['sessions']
              if not server.has_session(t['params']['session_name'])]:
        init(server, cfg['windows'], t)

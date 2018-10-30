import json
import os

if __name__ == '__main__':
    home = os.path.expanduser("~")
    testp = os.path.join(home, ".tests")
    devp = os.path.join(home, "repos")

    ws = [(1, 'main', home),
          (2, 'dev', devp),
          (3, 'tests', testp),
          (4, 'misc', home),
          (5, 'bg', home)]

    wks = ('window_index', 'window_name', 'start_directory')
    sks = [('float', 'green'), ('hotkey', 'yellow')]

    d = {'sessions': [{'params':
                       {'session_name': sks[i][0], wks[1]: ws[0][1]},
                       'color': sks[i][1]}
                      for i in range(len(sks))],

         'windows': [{wks[x]: ws[i][x] for x in range(len(wks))}
                     for i in range(len(ws))]
         }

    p = os.path.dirname(os.path.realpath(__file__))
    f = os.path.join(p, 'config.json')

    with open(f, 'w') as b:
        b.write(json.dumps(d))

import os
import sys
import xml.etree.ElementTree as ET


def fmtLabels(q):
    d = {l+c: q[f"Ansi {i+x} Color"]
         for l, x in {"normal": 0, "bright": 8}.items()
         for c, i in {
            "black": 0,
            "red": 1,
            "green": 2,
            "yellow": 3,
            "blue": 4,
            "magenta": 5,
            "cyan": 6,
            "white": 7}.items()
         }
    d.update({k.replace(" ", ""): v for k, v in q.items()
              if v not in d.items() and not k.startswith("Ansi")})

    home = os.path.expanduser("~")
    saucePath = os.path.join(home, ".colorSauce")

    with open(saucePath, "w") as f:
        f.write("\n".join([f"{k}={v}" for k, v in d.items()]))


def toHex():
    tree = ET.parse(sys.argv[1])
    root = tree.getroot()
    ks = root.findall("./dict/key")
    ds = root.findall("./dict/dict")

    d = {}
    for i in range(len(ks)):
        k = f"{ks[i].text}"
        try:
            r = int(float(ds[i][5].text)*255.0)
            g = int(float(ds[i][3].text)*255.0)
            b = int(float(ds[i][1].text)*255.0)
        except ValueError:
            r = int(float(ds[i][9].text)*255.0)
            g = int(float(ds[i][7].text)*255.0)
            b = int(float(ds[i][3].text)*255.0)
        d[k] = "#%02x%02x%02x" % (r, g, b)
    return d


if __name__ == "__main__":
    d = toHex()
    fmtLabels(d)

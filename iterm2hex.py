import json
import sys
import xml.etree.ElementTree as ET


def fmtLabels(src):
    d = {}
    labels = {"normalblack": "Ansi 0 Color",
              "normalred": "Ansi 1 Color",
              "normalgreen": "Ansi 2 Color",
              "normalyellow": "Ansi 3 Color",
              "normalblue": "Ansi 4 Color",
              "normalmagenta": "Ansi 5 Color",
              "normalcyan": "Ansi 6 Color",
              "normalwhite": "Ansi 7 Color",
              "brightblack": "Ansi 8 Color",
              "brightred": "Ansi 9 Color",
              "brightgreen": "Ansi 10 Color",
              "brightyellow": "Ansi 11 Color",
              "brightblue": "Ansi 12 Color",
              "brightmagenta": "Ansi 13 Color",
              "brightcyan": "Ansi 14 Color",
              "brightwhite": "Ansi 15 Color"}

    for k, v in labels.items():
        if v in src:
            d[k] = src[v]

    for k, v in src.items():
        if v not in d:
            d[k] = v

    with open("map.json", "w") as f:
        f.write(json.dumps(d))


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

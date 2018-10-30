import json
import os

symdict = {
    # fyi
    "bluetoothOff": "",
    "charging": "ﯓ",
    "dotfilesBehind": "ﭩ",
    "loud": "",
    "mute": "奄",
    "newMail": "",
    "noNet": "ﲁ",
    "webcamOn": "",

    # sys status
    "battery": "",
    "diagnose": "",
    "diagnose2": "",

    # tmux
    # -status
    "ram": "",
    "session": "",
    "theme": "  ",
    "user": "",
    "globalSideSeperator": "",
    "globalSeperatorIcon": "",
    "rightSideSeperator": "",
    "leftSideSeperator": "",

    # -windows
    "main": "",
    "dev": "",
    "misc": "",
    "tests": "拾",
    "bg": "",
    "hireddit": "",
    "github": "",
    "other": " ",
    "candy": ""

    # cur env
    #"arch": " ",
    #"centos": " ",
    #"manjaro": "   ",
    #"redhat": " ",
    #"ubuntu": " ",
    #"otherLinux": " ",
    #"raspbian": " ",
    #"bsd": "    ",
    #"macos": "    ",

    # misc
    # "dna": "ﮂ",
    # "home": "",
    # "rocket": "",
    # "science": "",
    # "test": "",

    # "diagnostics": "",
    # "docker": "",
    # # warnings
    # "level1": "",
    # "DEAD": "",
}

p = os.path.join(os.path.dirname(os.path.realpath(__file__)), "theme.json")
with open(p, "w") as f:
    f.write(json.dumps({k+"Icon": v for k, v in symdict.items()}))

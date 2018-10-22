import json

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
    "globalSideSeperatorIcon": "",
    "globalSeperatorIcon": "",
    "rightSideSeperatorIcon": "",
    "leftSideSeperatorIcon": "",

    # -windows
    "main": "",
    "dev": "",
    "misc": "",
    "tests": "拾",
    "bg": "",
    "other": " ",

    # cur env
    "arch": " ",
    "centos": " ",
    "manjaro": "   ",
    "redhat": " ",
    "ubuntu": " ",
    "otherLinux": " ",
    "raspbian": " ",
    "bsd": "    ",
    "macos": "    ",

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

with open("theme.json", "w") as f:
    f.write(json.dumps({k+"Icon": v for k, v in symdict.items()}))

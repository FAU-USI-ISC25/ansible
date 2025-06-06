import sys
import re

print("users:")
f = open("/etc/passwd", "r")
h = open("/etc/shadow","r")
for line in f:
    result = re.search('([0-9a-zA-Z]+):x:(1[0-9]{3}):1[0-9]{3}::[0-9a-zA-Z/]+:/bin/bash', line)
    if result is not None:
        print("-   name: \""+result.group(1)+"\"")
        print("    uid: "+result.group(2))
        for hashLine in h:
            hashResult = re.search(result.group(1)+':([0-9a-zA-Z$/.!]+):[0-9]+:0:99999:7:::', hashLine)
            if hashResult is not None:
                print("    pwhash: \""+hashResult.group(1)+"\"")
                break
f.close()

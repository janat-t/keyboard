#!/bin/sh
MODE=$(grep selected karabiner.json | grep -n true | awk '{print $1}' | cut -d : -f 1)
# echo $MODE
grep -e '^\s\{12\}"name"' ./karabiner.json | grep -n name | grep $MODE | awk '{print $3}' | cut -d \" -f 2 | cat
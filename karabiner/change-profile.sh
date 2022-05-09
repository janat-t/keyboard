#!/bin/sh
# set -euxo pipefail
cd "$(dirname "$0")"
MODE="$1"
# echo $MODE
LINES=$(grep -n selected ./karabiner.json | awk '{print $1}' | rev | cut -c 2- | rev)
# echo $LINES
LINE=$(echo $LINES | cut -d" " -f$MODE)
sed -i '' -e 's/"selected": true/"selected": false/' ./karabiner.json
sed -i '' -e "$LINE s/false/true/" karabiner.json

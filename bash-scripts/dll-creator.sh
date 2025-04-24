#!/data/data/com.termux/files/usr/bin/bash

cmd="$1"

source ~/.dll-creator

case $cmd in
setup)
  bash $scriptsDir/setup-dll.sh "$2" "$3";;
pattern-2)
  commands;;
pattern-3)
  commands;;
pattern-N)
  commands;;
*)
  commands;;
esac
#!/data/data/com.termux/files/usr/bin/bash

cmd="$1"

case $cmd in
setup)
  bash bash-scripts/setup-dll.sh "$2" "$3";;
pattern-2)
  commands;;
pattern-3)
  commands;;
pattern-N)
  commands;;
*)
  commands;;
esac
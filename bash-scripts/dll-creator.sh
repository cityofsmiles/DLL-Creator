#!/data/data/com.termux/files/usr/bin/bash

cmd="$1"

source ~/.dll-creator

case $cmd in
setup)
  bash $scriptsDir/setup-dll.sh "$2" "$3";;
  
compile)
  bash $scriptsDir/compile-dll.sh;;
  
*)
  echo 'Invalid command.';;
esac
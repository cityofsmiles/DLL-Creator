#!/data/data/com.termux/files/usr/bin/bash

# source ~/.dll-creator

handoutDir="$1"

dllDir="$(pwd)"

cd $handoutDir

lessonFilename="$(ls vs-*-input.tex)"

lessonPath=$handoutDir/$lessonFilename

line="$(sed -n '2,2p' $lessonFilename)"

title="$(sed 's/.*: \(.*\)}.*/\1/' <<< "$line")"

echo "$title"

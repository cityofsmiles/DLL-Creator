#!/data/data/com.termux/files/usr/bin/bash

# bash /storage/emulated/0/Android/media/Documents/others/android-scripts/termux/bash-scripts/get-title.sh path

handoutDir="$1"

dllDir="$(pwd)"

cd $handoutDir

lessonFilename="$(ls vs-*-input.tex)"

lessonPath=$handoutDir/$lessonFilename

line="$(sed -n '2,2p' $lessonFilename)"

title="$(sed 's/.*: \(.*\)}.*/\1/' <<< "$line")"

echo "$title"

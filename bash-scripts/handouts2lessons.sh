#!/data/data/com.termux/files/usr/bin/bash

# bash /storage/emulated/0/Android/media/Documents/others/android-scripts/termux/bash-scripts/handouts2lessons.sh handoutsPath lessonsPath

shopt -s dotglob nullglob

source ~/.dll-creator

handoutsPath="$1"

lessonsPath="$2"

lessonTemplateFile="$templatesDir/lesson-template.tex"

for i in $handoutsPath/*/ ;
do
 lessonDir="$(basename $i)"
 sed "s|THEHANDOUTPATH|$i|g" $lessonTemplateFile > $lessonsPath/$lessonDir.tex
done

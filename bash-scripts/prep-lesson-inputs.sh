#!/data/data/com.termux/files/usr/bin/bash

# bash /storage/emulated/0/Android/media/Documents/others/android-scripts/termux/bash-scripts/prep-lesson-inputs.sh

currentDir="$(pwd)"

mkdir -p "inputs"

days=(One Two Three Four Five)

firstLessonPath="$1"

firstLessonName="$(basename $firstLessonPath)"

lessonDir="$(dirname $firstLessonPath)"

cd $lessonDir

declare -a FILELIST
for f in *; do 
    FILELIST[${#FILELIST[@]}+1]="$f";
done

firstIndex="$(echo "$(printf "%s\n" "${FILELIST[@]}")" | grep -n "^$firstLessonName$" | sed "s/:$firstLessonName//")"

cd $currentDir

echo ${FILELIST[@]:$firstIndex:5} | tr " " "\n" > lessons-list.txt

i=0

while read path; do 
    j=$((i+1))
  sed -e "s/Day{/${days[i]}{/" -e "s/DAYTOTEACH/${days[i]}/g" "$lessonDir/$path" > ./inputs/day$j.tex
  i=$((i+1))
done <lessons-list.txt

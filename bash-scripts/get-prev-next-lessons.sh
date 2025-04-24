#!/data/data/com.termux/files/usr/bin/bash

source ~/.dll-creator

handoutPath="$1"

code="$2"

currentLessonDir="$(basename $handoutPath)"

handoutsMainDir="$(dirname $handoutPath)"

cd $handoutsMainDir

declare -a DIRLIST
for d in *; do 
    DIRLIST[${#DIRLIST[@]}]="$d";
done

nextIndex="$(echo "$(printf "%s\n" "${DIRLIST[@]}")" | grep -n "^$currentLessonDir$" | sed "s/:$currentLessonDir//")"

prevIndex=$((nextIndex-2))

case $code in
"n")
  LessonDir="${DIRLIST[$nextIndex]}"
  defaultLessonTitle="the next lesson";;
  
"p")
  LessonDir="${DIRLIST[$prevIndex]}" 
  defaultLessonTitle="the previous lesson"
  if [[ $prevIndex -lt 0 ]]
   then
       echo "$defaultLessonTitle"
   exit
fi;;
  
*)
  echo "Provide code. n for next lesson or p for previous."
  exit;;
esac

if [ -d "$LessonDir" ]; then
  cd $LessonDir
  
  if ls vs-*-input.tex >/dev/null 2>&1 ; then
  
  lessonFilename="$(ls vs-*-input.tex)"
  
  lessonPath=$LessonDir/$lessonFilename

line="$(sed -n '2,2p' $lessonFilename)"

title="$(sed 's/.*: \(.*\)}.*/\1/' <<< "$line")"

LessonTitle="$title"
echo "$LessonTitle"
    
else
  echo "$defaultLessonTitle"
fi

else
  echo "$defaultLessonTitle"
fi

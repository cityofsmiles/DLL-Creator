#!/data/data/com.termux/files/usr/bin/bash

# bash /storage/emulated/0/Android/media/Documents/others/android-scripts/termux/bash-scripts/week2dates.sh date<"2025-04-14"> code<w,d>

firstMonday="$1"

code="$2"

getWeekNum () {
        
currentDir="$(pwd)"

dllDir="$(dirname $currentDir)"

weekNum="$(($(ls $dllDir | wc -l)-1))"

}

getDates () {
firstFriday=$(date -d "$firstMonday + 4 day")

toAdd=$(($(($weekNum-1))*7))

fromDate=$(date +"%-d" -d "$firstMonday + $toAdd day")
 
toDate=$(date +"%-d" -d "$firstFriday + $toAdd day")
 
fromMonth=$(date +"%B" -d "$firstMonday + $toAdd day")
 
toMonth=$(date +"%B" -d "$firstFriday + $toAdd day")
 
toYear=$(date +"%Y" -d "$firstFriday + $toAdd day")

if [[ "${fromMonth}" == "${toMonth}" ]] ;then
 toMonth=""
 sepOne="--"
 sepTwo=""
 else
 sepOne=" -- "
 sepTwo=" "
 fi
 
 echo "$fromMonth $fromDate$sepOne$toMonth$sepTwo$toDate, $toYear"
}
 
case $code in
"w")
  getWeekNum
  echo $weekNum;;
"d")
  getWeekNum
  getDates;;
*)
  echo "Choose code: w for week number or d for dates";;
esac 
 
 


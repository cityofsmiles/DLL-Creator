#!/data/data/com.termux/files/usr/bin/bash

# bash /home/jonathan/Documents/others/android-scripts/termux/bash-scripts/setup-dll.sh d,l,h,e,q,n

templateCode="$1"

filename="$2"



#$(dirname "$(readlink -f "$0")")

#templatesPath="templates"

declare -A templates_array=(["d"]="dll" ["l"]="lesson" ["h"]="holiday" ["e"]="exam" ["q"]="quiz" ["n"]="noclasses")

if [ "$templateCode" == "d" ]; then
mkdir -p $filename
cd $filename
fi

#cp ${templates_array["$templateCode"]}-template.tex ./$filename.tex

echo "scriptPath"
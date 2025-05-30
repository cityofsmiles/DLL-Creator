#!/data/data/com.termux/files/usr/bin/bash

dllFile="*.tex"

dllName="$(basename -- $dllFile .tex)"

source ~/.dll-creator

teacherNames=("JONATHAN R. BACOLOD" "JERIC T. SAING" "JUANITO MANGAHAS" "XAVIER BAÑEZTA" "GRACE BARRIENTOS")

teacherSurnames=("Bacolod" "Saing" "Mangahas" "Bañezta" "Barrientos")

teacherPositions=("I" "II" "III" "IV" "V")

for((i=0;i<5;i++))
do
    sed -e "s/THETEACHER/${teacherNames[$i]}/g" -e "s/THEPOSITION/${teacherPositions[$i]}/g" -e "s/TEACHERSURNAME/${teacherSurnames[$i]}/g" $dllFile > $dllName-${teacherSurnames[$i]}.tex
    
     termux-toast "Compiling $dllName-${teacherSurnames[$i]}.pdf"
    
    /usr/bin/lualatex --shell-escape $dllName-${teacherSurnames[$i]}.tex && rm $dllName-${teacherSurnames[$i]}.tex
done

rm *.aux *.log *.txt

bash $scriptsDir/create-dll-prompt.sh

rm -rf ./inputs


#!/data/data/com.termux/files/usr/bin/bash

# bash /storage/emulated/0/Android/media/Documents/others/android-scripts/termux/bash-scripts/create-dll-prompt.sh


for i in {1..5}; do 
sed -n '/%STARTCOPY/{:a;N;/%ENDCOPY/!ba;s/.*%STARTCOPY\|%ENDCOPY.*//g;p}' ./inputs/day$i.tex >> ./inputs/for-prompt.tex

done

file="prompt-for-next-week"

cp /storage/emulated/0/Android/media/Documents/others/business/dll/templates/prompt-for-next-week.tex ./$file.tex

/usr/sbin/lualatex ./$file.tex

/usr/sbin/pdftotext ./$file.pdf

rm ./$file.pdf ./$file.tex

rm *.aux *.log
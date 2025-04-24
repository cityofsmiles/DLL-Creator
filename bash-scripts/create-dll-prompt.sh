#!/data/data/com.termux/files/usr/bin/bash

source ~/.dll-creator

for i in {1..5}; do 
sed -n '/%STARTCOPY/{:a;N;/%ENDCOPY/!ba;s/.*%STARTCOPY\|%ENDCOPY.*//g;p}' ./inputs/day$i.tex >> ./inputs/for-prompt.tex

done

file="prompt-for-next-week"

cp $templatesDir/prompt-for-next-week.tex ./$file.tex

/usr/bin/lualatex ./$file.tex

/usr/bin/pdftotext ./$file.pdf

rm ./$file.pdf ./$file.tex

rm *.aux *.log
#!/data/data/com.termux/files/usr/bin/bash

source ~/.dll-creator

handoutDir="$1"

dayToTeach="$2"

lessonMinipageHeight="$3"

exercisesMinipageHeight="$4"

activityMinipageHeight="$5"

cutHandoutTemplateFile="$templatesDir/cut-handout-template.tex"

dllDir="$(pwd)"

contentArray=("lesson" "exercises" "activity")

lessonPath="$(ls $handoutDir/vs-*-input.tex)"

exercisesPath="$(ls $handoutDir/ps-*-input1.tex)"

activityPath="$(ls $handoutDir/ps-*-input2.tex)"

prepFiles () {

contentPath=${content}Path

contentMinipageHeight="${content}MinipageHeight"
    
sed -e 's/.*multicols.*//g' -e 's/.*vspace.*//g' ${!contentPath}  > ./inputs/$content-$dayToTeach-input.tex

sed -e "s/THEMINIPAGEHEIGHT/${!contentMinipageHeight}/g" -e "s/THEINPUTFILE/$content-$dayToTeach-input.tex/g" $cutHandoutTemplateFile > ./inputs/$content-$dayToTeach.tex
    cd ./inputs
    /usr/bin/lualatex --shell-escape $content-$dayToTeach.tex
    cd ..
}

mkdir -p inputs

for content in ${contentArray[@]}; do
FILE=$dllDir/inputs/$content-$dayToTeach.pdf

if [ -f $FILE ]; then
   echo "File $FILE exists."
else
    prepFiles
fi   
done



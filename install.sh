#!/data/data/com.termux/files/usr/bin/bash

baseDir="$(pwd)"

scriptsDir="$baseDir/bash-scripts"

templatesDir="$baseDir/templates"

handoutsDir="$baseDir/handouts"

echo "baseDir=$baseDir" > ~/.dll-creator

echo "scriptsDir=$scriptsDir" >> ~/.dll-creator

echo "templatesDir=$templatesDir" >> ~/.dll-creator

echo "handoutsDir=$handoutsDir" >> ~/.dll-creator

#echo "export PATH=$scriptsDir:$templatesDir:$baseDir:$PATH" >> ~/.bashrc



cp $baseDir/bash-scripts/dll-creator.sh /usr/local/bin/dll

chmod +x /usr/local/bin/dll
#!/data/data/com.termux/files/usr/bin/bash

baseDir="$(pwd)"

scriptsDir="$baseDir/bash-scripts"

templatesDir="$baseDir/templates"

echo "export PATH=$scriptsDir:$templatesDir:$baseDir:$PATH" >> ~/.bashrc

source ~/.bashrc

cp $baseDir/bash-scripts/dll-creator.sh /usr/local/bin/dll

chmod +x /usr/local/bin/dll
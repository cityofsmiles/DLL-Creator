#!/data/data/com.termux/files/usr/bin/bash

baseDir="$(pwd)"

echo "export PATH=$baseDir:$PATH" >> ~/.bashrc
source ~/.bashrc

cp $baseDir/bash-scripts/dll-creator.sh /usr/local/bin/dll

chmod +x /usr/local/bin/dll
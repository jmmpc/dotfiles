#! /bin/bash

# list of all files and directories to backup
files="vimrc config/picom config/openbox" 

dir="$(pwd)"

echo "Copying the following files to $dir:"
# back-up existing files (if any) 
for file in $files; do
    if [ -f ~/.$file ]; then
        cp ~/.$file $dir/.$file &&
        echo ~/.$file "[OK]"
    elif [ -d ~/.$file ]; then
        mkdir -p $dir/.$file
        cp -r ~/.$file/* $dir/.$file &&
        echo ~/.$file "[OK]"
    else
        echo ~/.$file "[Error: not exist]"
    fi
done
echo "[Done]"

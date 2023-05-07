#! /bin/bash

cp $(pwd)/FindMyFile.sh ~/.local/bin

echo 'alias pp="~/.local/bin/FindMyFile.sh"' >> ~/.bashrc
source ~/.bashrc
echo 'Alias/Command for quick search for searching file is: pp'

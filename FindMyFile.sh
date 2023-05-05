#! /bin/bash
 
if ! command -v fzf &> /dev/null
then

echo 'Command not found'

echo 'Install command?(y/n)'

read check2

if [[ $check2 == 'y' ]]
then
sudo apt update

sudo apt install fzf

echo '

Run the script again

'

else
echo 'Exiting'
exit
fi

else

echo 'Enter Directory to search the file:'

read path1

cd $path1

fzf > /tmp/temp.txt

cat $(cat /tmp/temp.txt)

echo '

Do you want to edit this file? (y/n)

'

read check

if [[ $check == 'y' ]]
then

if ! command -v code &> /dev/null
then

nano $(cat /tmp/temp.txt)

else
code $(cat /tmp/temp.txt)

fi

else

echo 'Quiting'

fi

fi

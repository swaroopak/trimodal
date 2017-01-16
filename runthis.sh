#! /bin/bash
while read line
do
     name=$line
     echo "Text read from file - $name"
     name=$(echo $name | cut -c 2-)
    ./FinalYear -f -m /home/dell/grey_asm.model -C /home/dell/haarcascade_frontalface_alt.xml -p /home/dell$name 
done < $1

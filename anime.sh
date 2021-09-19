#!/bin/bash

anime=""
link=""

#lynx -dump -listonly https://www.animesaturn.it/animelist #| grep $anime

#lynx -dump -listonly https://www.animesaturn.it/anime | grep O

echo "Inserisci nome anime"

read anime

echo ${anime:0:1}

link=$(lynx -dump -listonly https://www.animesaturn.it/animelist?letter=${anime:0:1} | grep $anime | rofi -dmenu)

#echo $link

link1=$(lynx -dump -listonly $link | grep ep |rofi -dmenu)

link2=$(lynx -dump $link1 | grep watch) 

mpv $link2


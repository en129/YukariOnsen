#!/bin/sh

#port init
echo 9 > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio9/direction

while :
do
	GPIO9=`cat /sys/class/gpio/gpio9/value`
	if [ "$GPIO9" -eq "0" ]
	then
		echo "sen2 ON"
		echo sen2 | wall
		pkill omxplayer
		omxplayer -o local ~/onsen/part2.mp4 #yukari Shower movie
		echo end | wall
		exit 0
	fi
done


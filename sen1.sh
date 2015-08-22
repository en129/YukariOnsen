#!/bin/sh

#port init
echo 11 > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio11/direction

while :
do
	GPIO11=`cat /sys/class/gpio/gpio11/value`
	if [ "$GPIO11" -eq "0" ]
	then
		echo "sen1 ON"
		echo sen1 | wall
		omxplayer -o local ~/onsen/myt002.wav #welcome message
		omxplayer part1.mp4 #wait motion
		exit 0
	fi
done

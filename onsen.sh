#!/bin/sh

echo start | wall
pkill omxplayer
/home/pi/onsen/sen1.sh &
/home/pi/onsen/sen2.sh &
exit 0

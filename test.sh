#!/bin/sh

#port init
echo 11 > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio11/direction
echo 9 > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio9/direction
while :
do
	GPIO11=`cat /sys/class/gpio/gpio11/value`
        GPIO9=`cat /sys/class/gpio/gpio9/value`
	if [ "$GPIO11" -eq "0" ]
	then
		echo "sen1 ON"
	fi
        if [ "$GPIO9" -eq "0" ]
        then
                echo "sen2 ON"
        fi
done

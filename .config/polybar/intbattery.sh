#!/bin/bash

plugged=$(cat /sys/class/power_supply/BAT0/status)
percentage=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$plugged" = "Charging" ]; then
	read i < ~/.config/polybar/var.txt
	if (($i < 5)); then 
		i=$((i+1))		
		case "$i" in
			1) 	echo ": $percentage%";;
			2)	echo ": $percentage%";;
			3) 	echo ": $percentage%";;
			4)	echo ": $percentage%";;
			5) 	echo ": $percentage%"
				i=0;;
		esac	
		plugged=$(cat /sys/class/power_supply/BAT0/status)
		if [ "$plugged" = "Discharging" ]; then
			break;
		fi
		echo $i > ~/.config/polybar/var.txt
	fi			
elif [ "$plugged" = "Full" ]; then
	echo " $percentage%"
elif (($percentage > 95)); then
	echo ": $percentage%"
elif (($percentage > 75)); then
	echo ": $percentage%"
elif (($percentage > 50)); then
	echo ": $percentage%"
elif (($percentage > 25)); then
	echo ": $percentage%"
else
	echo ": $percentage%"
fi

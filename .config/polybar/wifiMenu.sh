#!/bin/bash

connected=$(iw wlp3s0 link)
if [ "$connected" = "Not connected." ]; then
	echo "----"
else
	var=$(awk 'NR==3 {print ($3 + "00")}' /proc/net/wireless)
	percentage=$(($var*10/7))
	echo "$percentage%"
fi

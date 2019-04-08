#!/bin/bash

downTotal=$(cat /sys/class/net/wlp3s0/statistics/rx_bytes)
upTotal=$(cat /sys/class/net/wlp3s0/statistics/tx_bytes)
sleep 1s

nowDown=$(cat /sys/class/net/wlp3s0/statistics/rx_bytes)
down=$(( -1 * (downTotal - nowDown) / 1000 ))

nowUp=$(cat /sys/class/net/wlp3s0/statistics/tx_bytes)
up=$(( -1 * (upTotal - nowUp) / 1000 ))
printf "$down kB/s $up kB/s" 

#! /bin/bash
cat /sys/bus/w1/devices/28-00000960fdf1/w1_slave | grep  -E -o ".{0,0}t=.{0,5}" | cut -c 3- > /home/pi/HydroponicsCabinet/temp.log

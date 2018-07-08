#!/bin/bash
/home/pi/HydroponicsCabinet/getTemp.sh
python /home/pi/HydroponicsCabinet/SI7021.py
printf "Pi temp:\n"
/opt/vc/bin/vcgencmd measure_temp
printf "Pi temp (different...?):\n"
cat /sys/class/thermal/thermal_zone0/temp
printf "Water temp (x1000):\n"
tail /home/pi/HydroponicsCabinet/temp.log
printf "Cabinet temp:\n"
tail /home/pi/HydroponicsCabinet/cabTemp.txt
printf "\n"
printf "Cabinet humidity:\n"
tail /home/pi/HydroponicsCabinet/cabHumid.txt
printf "\n"

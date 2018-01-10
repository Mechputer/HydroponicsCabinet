#!/bin/bash
/home/pi/scripts/getTemp.sh
/home/pi/scripts/tempHumid
printf "Pi temp:\n"
/opt/vc/bin/vcgencmd measure_temp
printf "Pi temp (different...?):\n"
cat /sys/class/thermal/thermal_zone0/temp
printf "Water temp (x1000):\n"
tail /home/pi/scripts/temp.log
printf "Cabinet temp:\n"
tail /home/pi/scripts/cabTemp.txt
printf "\n"
printf "Cabinet humidity:\n"
tail /home/pi/scripts/cabHumid.txt
printf "\n"

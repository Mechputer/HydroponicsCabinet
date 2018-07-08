#!/bin/bash
/home/pi/HydroponicsCabinet/getWaterTemperature.sh
python /home/pi/HydroponicsCabinet/SI7021.py
printf "Pi CPU temperature:\n"
/opt/vc/bin/vcgencmd measure_temp
printf "Pi temperature (different...?):\n"
cat /sys/class/thermal/thermal_zone0/temp
printf "Water temperature (/1000):\n"
tail /home/pi/HydroponicsCabinet/waterTemperature.log
printf "Cabinet temperature:\n"
tail /home/pi/HydroponicsCabinet/cabinetTemperature.txt
printf "\n"
printf "Cabinet humidity:\n"
tail /home/pi/HydroponicsCabinet/cabinetHumidity.txt
printf "\n"

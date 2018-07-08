#! /bin/bash
tail /dev/ttyUSB0 > /home/pi/HydroponicsCabinet/sensors.log
grep , /home/pi/HydroponicsCabinet/sensors.log | cut -d, -f1 > sensorTemp.log
awk '{s+=$1}END{print NR?s/NR:NaN}' /home/pi/HydroponicsCabinet/sensorTemp.log > /home/pi/HydroponicsCabinet/sensorTempAverage.log
grep , /home/pi/HydroponicsCabinet/sensors.log | cut -d, -f2 > sensorData.log
awk '{s+=$1}END{print NR?s/NR:NaN}' /home/pi/HydroponicsCabinet/sensorData.log > /home/pi/HydroponicsCabinet/sensorDataAverage.log
grep , /home/pi/HydroponicsCabinet/sensors.log | cut -d, -f3 > sensorOffset.log
awk '{s+=$1}END{print NR?s/NR:NaN}' /home/pi/HydroponicsCabinet/sensorOffset.log > /home/pi/HydroponicsCabinet/sensorOffsetAverage.log
grep , /home/pi/HydroponicsCabinet/sensors.log | cut -d, -f4 > sensorElectroconductivity.log
awk '{s+=$1}END{print NR?s/NR:NaN}' /home/pi/HydroponicsCabinet/sensorElectroconductivity.log > /home/pi/HydroponicsCabinet/sensorElectroconductivityAverage.log

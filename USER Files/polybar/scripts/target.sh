#!/bin/sh

ip_address=$(cat /home/krystal/.config/polybar/scripts/target | awk '{print$1}')
machine_name=$(cat /home/krystal/.config/polybar/scripts/target | awk '{print$2}')

if [ $ip_address ] && [ $machine_name ]; then
   echo "%{F#d75c5b}什 %{F#ffffff}$ip_address%{u-} - $machine_name %{F#d75c5b}什 %{F#ffffff}  "
else
   echo " "
fi
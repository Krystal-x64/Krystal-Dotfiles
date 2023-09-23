#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
   echo "%{F#398757} %{F#ffffff}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')${u-} %{F#398757} %{F#ffffff} "
else
   echo "%{F#398757}%{u-} "
fi
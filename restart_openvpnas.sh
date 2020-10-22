#!/bin/sh

#Programmer: Daniel Dolezal
#Write Date: 20.10.2020
#Use: Restart OpenVPN if it goes down

while true; do
 service=$(sudo systemctl status openvpnas | grep Active | cut -d ":" -f "2-3" | cut -d " " -f "2-2")

 clear
 echo "OpenVPN: $service"
 if [ $service = "failed" ]; then
  sudo systemctl restart openvpnas
 fi
 sleep 10
done


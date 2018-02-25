#!/bin/bash
#execute  this file  in  /etc/rc.local
CONFIG_FILE=/etc/var.sh
if [ -e $CONFIG_FILE ]; then
	source $CONFIG_FILE 
	if [ $IF_TYPE_NAT == 1 ]; then
		echo "network:nat "
		systemctl restart NetworkManager
		
	else
		echo "network:bridge"
		if [ $GET_IP_DHCP == 1 ]; then
			systemctl restart NetworkManager
		else
			ifconfig $VALID_IF_NAME $USER_DEFINED_IP netmask 255.255.255.0
			route add default gw 192.168.1.1
			echo "nameserver 114.114.114.114" | resolvconf  -a $VALID_IF_NAME.inet 
		fi
	fi
else
	echo $CONFIG_FILE not found,fail to config net
	exit 1
fi

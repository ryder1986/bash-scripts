echo 1 >/proc/sys/net/ipv4/ip_forward
iptables -F
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.4.0/24 -o  enp0s3 -j MASQUERADE

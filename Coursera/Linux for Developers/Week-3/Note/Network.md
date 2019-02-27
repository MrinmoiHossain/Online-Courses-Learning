$ /sbin/ifconfig

$ ls -l /sys/class/net/eth0/statistics

$ sudo /sbin/ifconfig eth0 up 192.168.1.100

$ sudo /sbin/ifconfig eth0 up


$ sudo /sbin/dhclient eth0

ip [ OPTIONS ] OBJECT { COMMAND | help }

$ ip link

$ ip -s link show eth0

$ sudo ip addr add 192.168.1.7 dev eth0

$ sudo ip link set eth0 down

$ sudo ip link set eth0 mtu 1480

$ sudo ip route add 172.16.1.0/24 via 192.168.1.5
# Ger�tename der Netzwerkbr�cke
brName='br0'
# Ger�tename der Netzwerkkarte
ethName='eth0'
# TAP-Ger�tename
tapName='tap0'
# TAP-Benutzer
tapUser='test'

# Netzwerkbr�cke erstellen
brctl addbr $brName

# IP-Adresse entfernen
ip addr flush dev $ethName

# Netzwerkkarte zur Netzwerkbr�cke hinzuf�gen
brctl addif $brName $ethName

# TAP-Ger�t erstellen
tunctl -t $tapName -u $tapUser

# TAP-Ger�t zur Netzwerkbr�cke hinzuf�gen
brctl addif $brName $tapName

# Alle Netzwerkger�te "hochfahren"
ifconfig $ethName up
ifconfig $tapName up
ifconfig $brName up

# Netzwerkbr�ckenkonfiguration anzeigen
brctl show

# IP-Adresse und Route wiederherstellen
# Statisch
# ifconfig $brName 192.168.23.123/24
# route add -net default gw 192.168.23.1

# DHCP
# dhclient -v $brName

# Gerätename der Netzwerkbrücke
brName='br0'
# Gerätename der Netzwerkkarte
ethName='eth0'
# TAP-Gerätename
tapName='tap0'
# TAP-Benutzer
tapUser='test'

# Netzwerkbrücke erstellen
brctl addbr $brName

# IP-Adresse entfernen
ip addr flush dev $ethName

# Netzwerkkarte zur Netzwerkbrücke hinzufügen
brctl addif $brName $ethName

# TAP-Gerät erstellen
tunctl -t $tapName -u $tapUser

# TAP-Gerät zur Netzwerkbrücke hinzufügen
brctl addif $brName $tapName

# Alle Netzwerkgeräte "hochfahren"
ifconfig $ethName up
ifconfig $tapName up
ifconfig $brName up

# Netzwerkbrückenkonfiguration anzeigen
brctl show

# IP-Adresse und Route wiederherstellen
# Statisch
# ifconfig $brName 192.168.23.123/24
# route add -net default gw 192.168.23.1

# DHCP
# dhclient -v $brName

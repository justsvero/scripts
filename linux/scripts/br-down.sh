# Gerätename der Netzwerkbrücke
brName='br0'
# Gerätename der Netzwerkkarte
ethName='eth0'
# TAP-Gerätename
tapName='tap0'

# TAP-Gerät von der Netzwerkbrücke trennen
brctl delif $brName $tapName

# TAP-Gerät löschen
tunctl -d $tapName

# Netzwerkkarte von der Netzwerkbrücke trennen
brctl delif $brName $ethName

# Netzwerkbrücke herunterfahren
ifconfig $brName down

# Netzwerkbrücke entfernen
brctl delbr $brName

# Netzwerkkarte neu konfigurieren
	# Statisch
	# ifconfig $ethName 192.168.23.123/24
	# route add -net default gw 192.168.23.1

	# DHCP
	# dhclient -v $ethName

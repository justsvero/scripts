# Ger�tename der Netzwerkbr�cke
brName='br0'
# Ger�tename der Netzwerkkarte
ethName='eth0'
# TAP-Ger�tename
tapName='tap0'

# TAP-Ger�t von der Netzwerkbr�cke trennen
brctl delif $brName $tapName

# TAP-Ger�t l�schen
tunctl -d $tapName

# Netzwerkkarte von der Netzwerkbr�cke trennen
brctl delif $brName $ethName

# Netzwerkbr�cke herunterfahren
ifconfig $brName down

# Netzwerkbr�cke entfernen
brctl delbr $brName

# Netzwerkkarte neu konfigurieren
	# Statisch
	# ifconfig $ethName 192.168.23.123/24
	# route add -net default gw 192.168.23.1

	# DHCP
	# dhclient -v $ethName

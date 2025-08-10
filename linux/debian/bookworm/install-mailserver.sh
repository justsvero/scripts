#!/usr/bin/bash

apt update && apt dist-upgrade -y

apt install -y postfix postfix-doc sasl2-bin fetchmail procmail bsd-mailx

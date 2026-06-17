#!/bin/bash

rpm --import https://packages.microsoft.com/keys/microsoft.asc

printf '%s\n' '[microsoft-edge]' 'name=microsoft-edge' 'baseurl=https://packages.microsoft.com/yumrepos/edge-stable' 'enabled=1' 'gpgcheck=1' 'gpgkey=https://packages.microsoft.com/keys/microsoft.asc' | tee /etc/yum.repos.d/microsoft-edge.repo > /dev/null

dnf makecache --refresh
dnf install microsoft-edge-stable

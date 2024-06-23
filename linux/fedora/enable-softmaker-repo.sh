#!/usr/bin/bash

wget -qO /etc/yum.repos.d/softmaker.repo https://shop.softmaker.com/repo/softmaker.repo

dnf update -y

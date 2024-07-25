#!/usr/bin/bash

# Java 21
apt install -y openjdk-21-{doc,jdk,source}

# Remove Java 11 (since replaced by Java 21 now)
apt purge -y openjdk-11-jre openjdk-11-jre-headless

# Cleanup
apt autopurge -y

#!/usr/bin/env bash
#sudo iwlist wlan0 scan
sudo iwlist wlan0 scan | grep -B2 "$1" | grep Signal | sed 's/.*level=-\(.*\) dBm/\1/g'

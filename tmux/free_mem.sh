#!/bin/bash

mem=$(cat /proc/meminfo | grep MemAvail | awk '{print int($2=$2/1024)}')
echo $mem "MB"

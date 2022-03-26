#!/bin/bash

#Author: 
#Date: March 2, 2022
#Descrition: "Full Server Inventory"

echo -e "\nServer Name:\n "
uname -n
sleep 2
echo -e "\nIP Address:\n "
ifconfig | grep "inet addr" | grep -v 127.0.0.1 | awk '{print $2}' | awk -F: '{print $2}'
sleep 2
echo -e "\nNumber of CPU:\n "
grep "physical id" /proc/cpuinfo | sort | uniq | wc -l
sleep 2
echo -e "\nNumber of Cores: \n"
grep "^processor" /proc/cpuinfo | wc -l
sleep 2
echo -e "\nProcessor speed (MHz):\n "
grep MHz /proc/cpuinfo | sort | awk '{print $NF}' | uniq -c
sleep 2
echo -e "\nDisk(s): \n"
fdisk -l | grep Disk
sleep 2
echo -e "\nOperating System:\n "
cat /etc/*release | grep PRETTY_NAME | awk -F '"' '{print $2}'
sleep 2
echo -e "\nMemory:\n "
grep MemTotal /proc/meminfo | awk '{print $2,$3}'
sleep 2
echo -e "\nUp for:\n "
uptime | awk '{print $3,$4,$5}'
sleep 2
echo -e "\nManufacturer:\n "
cat /sys/devices/virtual/dmi/id/sys_vendor
sleep 2
echo -e "\nModel or Product Name:\n "
cat /sys/devices/virtual/dmi/id/product_name

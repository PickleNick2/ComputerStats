#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use 'sudo' to run this script."
    exit 1
fi
clear
echo "====================== Welcome to the PC Stats Dashboard ======================"
echo
echo

echo "This script will display various statistics about your PC."
echo "Please wait while we gather the information..."
echo
echo
software_release=`lsb_release -a`
cpu_info=`lscpu`
ram_info=`free -h`
uptime_info=`uptime -p`

echo
echo "CPU: $cpu_info | RAM: $ram_info | Uptime: $uptime_info"
echo
echo
echo



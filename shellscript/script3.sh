#!/bin/bash

echo "$(lsb_release -a)"
echo "All available shells $(cat /etc/shells)"
echo "Mouse Settings: $(xinput --list --short)"
echo "$(lscpu)"
echo "Memory Information: $(free -m)"
echo "Hard disk info $(sudo dmidecode -t memory)"
echo "Mounted File System $(sudo fdisk -l)"

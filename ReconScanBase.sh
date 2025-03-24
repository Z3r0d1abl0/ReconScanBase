#!/bin/bash

# Ask for IP address to scan
read -p "Enter the IP address to scan: " ip

# Phase 1: Quick SYN scan
echo "Initial SYN scan on $ip..."
ports=$(nmap -sS $ip | grep 'open' | awk -F/ '{print $1}' | xargs | tr ' ' ',')

if [ -z "$ports" ]; then
    echo "No open ports found - Stopping script"
    exit 1
fi

# Phase 2: Gobuster if port 80 is open (immediately after detection)
if [[ $ports == *80* ]]; then
    echo -e "\nPort 80 open - Launching Gobuster in new terminal..."
    
    # Command configuration
    gobuster_cmd="gobuster dir -u http://$ip -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 50 -x php,html,txt,js"
    
    # Using xterm (basic terminal)
    xterm -hold -e "bash -c '$gobuster_cmd; echo; echo \"Press Enter to close...\"; read'" &
fi

# Phase 3: Detailed scan on all open ports
echo -e "\nOpen ports detected: $ports"
echo "Starting detailed scan..."
nmap -sC -sV -p $ports $ip

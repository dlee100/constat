#!/bin/bash

# Run with `watch' command for constant monitoring: 
# watch -n1 --color ./constat.sh

# Easier way to run this is to set the command above as an alias.
# I also dropped this program in my /etc/ so that is why the text file is explicitly stated in the declare function.

# Inputting data from text file and making it an associative array.

PWD=$(pwd)

declare -A ip $(cat ${PWD}/ip_list.txt)

# Colors for text.
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# echo "Current connection status of listed nodes in the LAN."

# Loop through the array.
for i in ${!ip[@]};
do 
    timeout 0.2 ping -c1 $i > /dev/null ;
    ( [[ $? -eq 0 ]] && echo -e "Connection to ${ip[$i]} .......... ${GREEN}SUCCESS${NC}" ) || echo -e "Connection to ${ip[$i]} .......... ${RED}FAILED${NC}" ;
done | sort | column -t


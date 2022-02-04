#!/bin/bash

# Run with `watch' command for constant monitoring: 
# watch -n1 --color ./conmon.sh

# Inputting data from text file and making it an associative array.
declare -A ip $(cat ip_list.txt)

# Colors for text.
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# Loop through the array.
for i in ${!ip[@]};
do 
    timeout 0.2 ping -c1 $i > /dev/null ;
    ( [[ $? -eq 0 ]] && echo -e "${ip[$i]} .......... ${GREEN}CONNECTED${NC}" ) || echo -e "${ip[$i]} .......... ${RED}DISCONNECTED${NC}" ;
done | column -t


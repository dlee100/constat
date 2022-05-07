# constat
Connection Status monitor or *constat*:
Monitor your connection to other devices in your LAN with this simple bash script.

1. Write down the device information you want to monitor the connection with in the *ip_list.txt* file. 

Must write in this format: `ip[#.#.#.#]=DEVICE-NAME`

Example: `ip[127.0.0.1]=LOCALHOST`

2. Run the script: `watch -n1 --color ./constat.sh`

## Incoming 2022:
[ ] Be able to run constantly with one command. `constat`

[ ] Be able to output once with one command. `constat once`

[ ] Text-based user prompt to enter node ip-address and node name. `constat add`

[ ] Be able to edit ip_list, summoned by a command. `constat edit`

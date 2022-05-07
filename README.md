# constat
Connection Status monitor or *constat*:
Monitor your connection to other devices in your LAN with this simple bash script.

1. Write down the device information you want to monitor the connection with in the *ip_list.txt* file. 

Must write in this format: `ip[#.#.#.#]=DEVICE-NAME`

Example: `ip[127.0.0.1]=LOCALHOST`

2. Run the script: `watch -n1 --color ./constat.sh`

## Incoming 2022:
[ ] Text-based user prompt to enter node ip-address and node name.

[ ] Be able to run with one command.

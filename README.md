# con-mon
Connection monitor or *con-mon*:
Monitor your connection to other devices in your LAN with this simple script.

1. Write down the device information you want to monitor the connection with in the *ip_list.txt* file. 

Must write in this format: `ip[#.#.#.#]=DEVICE-NAME`

Example: `ip[127.0.0.1]=LOCALHOST`

2. Run the script: `watch -n1 --color ./conmon.sh`

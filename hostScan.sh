#!/bin/bash

function ctrl_c(){
  echo -e "\n\n[!] Exiting...\n"
  exit 1 #Force exit with a "Not successful" status code
}

# Ctrl+C
trap ctrl_c INT #Captures Ctrl + C and redirects the flow of the program to ctrl_c()

for i in $(seq 1 254); do
  timeout 1 bash -c "ping -c 1 192.168.1.$i &>/dev/null" && echo "[+] Host 192.168.1.$i - ACTIVE" &
done; wait

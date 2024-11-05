# Host-Scan

This Bash script is a basic network scanner that checks for active hosts within a specified subnet. It attempts to ping each IP address in the range `192.168.1.1` to `192.168.1.254` to identify active hosts on the network. The script handles interruptions and exits gracefully.

## Features

- **Subnet Scanning**: Pings each IP address from `192.168.1.1` to `192.168.1.254`.
- **Concurrency**: Scans multiple IPs concurrently to speed up the process.
- **Signal Handling**: Captures `Ctrl+C` to exit gracefully and display a custom exit message.
- **Timeout for Pings**: Uses a timeout of 1 second per ping to avoid long delays on inactive hosts.

## Requirements

This script uses basic Bash commands and requires `ping` and `timeout`, which are typically available on most Linux systems.

## Usage

To run the script, simply execute it from the terminal:

```bash
./host_discovery.sh
```

## How It Works

- **IP Looping**: The script loops through IPs from `192.168.1.1` to `192.168.1.254`.
- **Ping Check**: For each IP, it attempts a single ping with a 1-second timeout. If the host responds, it is marked as active.
- **Concurrency**: Each ping check runs in a background process, allowing multiple IPs to be scanned simultaneously.
- **Signal Handling**: If `Ctrl+C` is pressed, the `ctrl_c` function is called, displaying an exit message and stopping the script.

## Notes

- This script is designed for quick discovery of active hosts on a local network. For comprehensive network scanning, consider using tools like `nmap`.
- Warning: Ensure you have permission to scan any network, as unauthorized network scanning may be illegal in certain locations.

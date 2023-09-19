# Real-time Network Monitoring Script

This Bash script provides real-time monitoring of network performance, IP addresses, MAC addresses, and open ports on a Linux system. It combines various commands to display this information in a single view.

## Prerequisites

Before using this script, ensure that the following prerequisites are met:

- Linux-based operating system (tested on Ubuntu 18.04)
- Bash shell
- `iftop` command for network performance monitoring

## Installation

1. Clone the repository or download the `network_info.sh` script.

```bash
git clone 
cd bash-scripts/Network-Monitoring
```

2. Make it executable

```bash
chmod +x network_info.sh
```

## Usage

```bash
./network_info.sh
```

## Example Output

```bash
Timestamp: Tue Sep 19 13:44:02 UTC 2023
IP Addresses:
   eth0: xx.xx.xx.xx
MAC Addresses:
   eth0: xx:xx:xx:xx:xx:xx
Open Ports:
   22
Network Performance:

Listening on eth0
   # Host name (port/service if enabled)            last 2s   last 10s   last 40s cumulative
--------------------------------------------------------------------------------------------
   1 xx.xx.xx.xx:22                          =>     4.81Kb     4.81Kb     4.81Kb     1.20KB
     xx.xx.xx.xx:11599                       <=       832b       832b       832b       208B
--------------------------------------------------------------------------------------------
Total send rate:                                     4.81Kb     4.81Kb     4.81Kb
Total receive rate:                                    832b       832b       832b
Total send and receive rate:                         5.62Kb     5.62Kb     5.62Kb
--------------------------------------------------------------------------------------------
Peak rate (sent/received/total):                     4.81Kb       832b     5.62Kb
Cumulative (sent/received/total):                    1.20KB       208B     1.41KB
============================================================================================
```

- Listening on eth0: Indicates the network interface being monitored (e.g., eth0).

- Host name (port/service if enabled) last 2s last 10s last 40s cumulative: Column headers for the network performance table with statistics for different time intervals.

- xx.xx.xx.xx:22 => 4.81Kb 4.81Kb 4.81Kb 1.20KB: A data row representing network traffic between two hosts. It includes the source IP address and port, direction of traffic, data transfer rates for various time intervals, and cumulative data transfer.

- xx.xx.xx.xx:11599 <= 832b 832b 832b 208B: Another data row representing incoming network traffic.

- Total send rate: Total data send rate for various time intervals.

- Total receive rate: Total data receive rate for various time intervals.

- Total send and receive rate: Combined send and receive rate.

- Peak rate (sent/received/total): Peak data transfer rates observed.

- Cumulative (sent/received/total): Cumulative data transfer statistics.



#!/bin/bash

# Function to monitor network performance with iftop
monitor_network_performance() {
    echo "Network Performance:"
    iftop -t -n -N -P
}

# Function to display IP addresses and MAC addresses
display_ip_mac_addresses() {
    echo "IP Addresses:"
    ip -o -4 addr show scope global | awk '{print "   " $2 ": " $4}' | cut -d'/' -f1
    echo "MAC Addresses:"
    ip link show | awk '/ether/ {print "   " $2}'
}

# Function to display open ports
display_open_ports() {
    echo "Open Ports:"
    ss -tuln | awk '/LISTEN/ {split($5, a, ":"); print a[2]}'
}

# Function to show real-time information
show_realtime_info() {
    while true; do
        clear  # Clear the screen for a clean display

        # Display current timestamp
        echo "Timestamp: $(date)"

        # Display IP addresses and MAC addresses
        display_ip_mac_addresses

        # Display open ports
        display_open_ports

        # Monitor network performance
        monitor_network_performance

        # Wait for a few seconds before updating information
        sleep 5
    done
}

# Start showing real-time information
show_realtime_info

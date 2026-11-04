#!/bin/bash

echo "===== SERVER HEALTH REPORT ====="
echo ""

echo "Date & Time:"
date
echo ""

echo "Hostname:"
hostname
echo ""

echo "Uptime:"
uptime
echo ""

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Top 5 Memory Consuming Processes:"
ps aux --sort=-%mem | head -6
echo ""

echo "Top 5 CPU Consuming Processes:"
ps aux --sort=-%cpu | head -6
echo ""

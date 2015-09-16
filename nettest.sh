#!/bin/bash
echo "=== Checking latency ==="
echo
echo "$ sudo traceroute -d 8.8.8.8"
sudo traceroute -d 8.8.8.8
echo
echo
echo "$ ping -c 10 8.8.8.8"
ping -c 10 8.8.8.8
echo
echo
echo "=== UDP: Checking DNS ==="
echo "$ time dig @8.8.8.8 google.com"
time dig @8.8.8.8 google.com
echo "---------------------------------------------------------------------"
echo "$ time dig @8.8.8.8 google.com"
time dig @8.8.8.8 google.com
echo "---------------------------------------------------------------------"
echo "$ time dig @8.8.8.8 google.com"
time dig @8.8.8.8 google.com
echo "---------------------------------------------------------------------"
echo
echo
echo "=== TCP: Checking HTTP request using curl ==="
echo
echo "/// Small Response (~8KB) ///"
echo "$ time curl -o /dev/null http://www.google.com"
time curl -o /dev/null http://www.google.com
echo "---------------------------------------------------------------------"
echo
echo "/// 1K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/1K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/1K.bin
echo "---------------------------------------------------------------------"
echo
echo "Test complete."

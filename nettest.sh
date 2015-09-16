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
echo "/// 5K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/5K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/5K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 10K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/10K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/10K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 25K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/25K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/25K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 50K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/50K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/50K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 100K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/100K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/100K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 250K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/250K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/250K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 500K Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/500K.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/500K.bin
echo "---------------------------------------------------------------------"
echo
echo "/// 1M Response ///"
echo "$ time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/1M.bin"
time curl -o /dev/null https://github.com/kris/netspeedtest/raw/master/1M.bin
echo "---------------------------------------------------------------------"
echo
echo "Test complete."

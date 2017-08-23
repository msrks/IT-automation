#!/bin/sh

echo 8.3.1.1
sh do_telnet.sh 8.3.1.1 > log_telnet.txt

for i in `seq 2 $1`
do
  echo 8.3.1.$i;
  timeout 10 sh do_telnet.sh 8.3.1.$i >> log_telnet.txt;
done

cat log_telnet.txt | grep -e "Connected" -e "reg30" -e "RX CRC"

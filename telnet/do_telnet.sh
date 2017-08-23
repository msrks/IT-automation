#!/bin/sh
host=$1
user="xxxxxxxxxxxxxxxx\r\n"
pass="xxxxxxxxxxxxxxxx\r\n" 
cmd1="1\r\n"
cmd2="97\r\n"
cmd3="1\r\n"
cmd4="1\r\n"
cmd5="q\r\n"
cmd6="!rxcrcerr\r\n"

( echo open ${host};
sleep 1
echo ${user}
sleep 1
echo ${pass}
sleep 1
echo ${cmd1}
sleep 1
echo ${cmd2}
sleep 1
echo ${cmd3}
sleep 1
echo ${cmd4}
sleep 1
echo ${cmd5}
sleep 1
echo ${cmd6}
sleep 1) | telnet

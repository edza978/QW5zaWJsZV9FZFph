#!/bin/bash
df -k /
echo "Stoping Squid"
service squid3 stop
# /etc/init.d/squid3 stop

echo "Cleanning Cache"
rm -Rf /var/spool/squid3/*

echo "Cleaning logs"
>/var/log/squid3/cache.log
>/var/log/squid3/access.log
>/var/log/squid3/store.log
#>/var/log/privoxy/logfile

echo "Rebuilding cache"
/usr/sbin/squid3 -z

echo "Starting Squid"
service squid3 start
#/etc/init.d/squid3 start
df -k /

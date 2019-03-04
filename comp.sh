#!/bin/sh
sudo addgroup --system --quiet zabbix
sudo adduser --quiet --system --disabled-login --ingroup zabbix --home /var/lib/zabbix --no-create-home zabbix
sudo mkdir -m u=rwx,g=rwx,o= -p /var/lib/zabbix
chown zabbix:zabbix /var/lib/zabbix

/home/azz/GitHub/zabbix-4.0.5/configure --enable-server --with-postgresql --with-net-snmp 
sudo make install



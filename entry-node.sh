#!/bin/bash

if [[ -z $CFGSERVER ]]; then
	CFGSERVER=ghead
fi

if [[ ! -z $LMPUSER ]]; then
	(id $LMPUSER>/dev/null 2>&1) || useradd $LMPUSER -m -s /bin/bash
	(grep -q $LMPUSER /etc/sudoers) || (echo "$LMPUSER ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers)
fi

echo Booting compute node: ghead
service dbus start
service ssh start
service munge start

if [[ -z $NOSLURM ]]; then
	# wait a bit-> let server up
	sleep 5
	slurmd -D --conf-server $CFGSERVER
else
	while true; do
		sleep 10
	done
fi

#!/bin/sh

TEMP=`/home/marines/repos/micropc/temper-rrdgraph/bin/pcsensor | cut -d' ' -f 5 | cut -d'C' -f 1`

# don't update db if there was an error during read
re='^-?[0-9]+([.][0-9]+)?$'
if ! [[ $TEMP =~ $re ]] ; then
	exit 1
fi

rrdtool update /home/marines/repos/micropc/temper-rrdgraph/databases/$1.rrd N:$TEMP





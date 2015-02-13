#!/bin/sh

TEMP=`/home/marines/repos/micropc/temper-rrdgraph/bin/pcsensor | cut -d' ' -f 5 | cut -d'C' -f 1`

echo rrdtool update /home/marines/repos/micropc/temper-rrdgraph/databases/$1.rrd N:$TEMP
rrdtool update /home/marines/repos/micropc/temper-rrdgraph/databases/$1.rrd N:$TEMP





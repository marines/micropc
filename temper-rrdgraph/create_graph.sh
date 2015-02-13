#!/bin/sh

rrdtool graph /home/marines/repos/micropc/temper-rrdgraph/graphs/$1.png \
-w 785 -h 120 -a PNG \
--slope-mode \
--start -604800 --end now \
--vertical-label "temperature (°C)" \
DEF:temp=/home/marines/repos/micropc/temper-rrdgraph/databases/$1.rrd:temp:MAX \
LINE1:temp#ff0000:"temp"

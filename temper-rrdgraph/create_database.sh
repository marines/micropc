#!/bin/sh

rrdtool create databases/$1.rrd \
--step 300 \
DS:temp:GAUGE:600:0:50 \
RRA:MAX:0.5:1:2016

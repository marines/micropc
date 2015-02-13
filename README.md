# micropc

This repository contains scripts I use on my single-board computers which currently are Raspberry Pi Model B, Banana Pi and Odroid C1. Just to have them ready to go everytime SD filesystem crashes and I have to set everything up from scratch. If you will find them somehow useful enjoy. :)

## Temper RRD

Simple temperature graph generator for TEMPER v1.4 USB thermometer. Scripts are meant to be executed by cron to gather and generate graph image which is symlinked to lighttpd's web root for now.

### Packages to install

 - rrdtool (for data storage and graph generation)
 - lighttpd (for serving graph on the web)

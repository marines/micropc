# micropc

This repository contains scripts I use on my single-board computers which currently are Raspberry Pi Model B, Banana Pi and Odroid C1. Just to have them ready to go everytime SD filesystem crashes and I have to set everything up from scratch. If you will find them somehow useful enjoy. :)

## Temper RRD

Simple temperature graph generator for TEMPER v1.4 USB thermometer. Scripts are meant to be executed by cron to gather and generate graphs which are symlinked to lighttpd's web root for now. There is also slick (I mean ugly ass) page on Bootstrap with the graphs.

![Temper Stats Preview](http://i.imgur.com/AxOcTxg.png)

The noise on daily temperature graph comes from before fix for inserting null values to database.

### Packages to install

 - rrdtool (for data storage and graph generation)
 - lighttpd (for serving graph on the web)

### Scripts
 - **create_database.sh** *name* - will create database with given name in *databases* directory.
 - **create_graph.sh** *name* - will create few graphs for given database name in *graphs* directory.
 - **cron.sh** *name* - runs *feed_database.sh* and *create_database.sh* for given database name. Is meant to be run from cron obviously.
 - **feed_database.sh** *name* - will read temperature from the sensor and insert it to given database name.

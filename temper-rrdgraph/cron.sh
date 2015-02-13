#!/bin/sh

/home/marines/repos/micropc/temper-rrdgraph/feed_database.sh $1
/home/marines/repos/micropc/temper-rrdgraph/create_graph.sh $1

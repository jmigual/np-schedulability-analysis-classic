#!/bin/bash

WORKLOAD=$1

NAME=`basename $WORKLOAD`
COUNT=`wc -l $WORKLOAD | awk '{print $1}'`
for l in $(seq -w 2  932)
do
    head -n $l $WORKLOAD > ${NAME/.csv/}_split=$l.csv
done

#!/bin/bash
wc -c < $1
wc -l < $1
wc -w < $1
awk '{print "Line No: " NR, "-", "Count of words:" , NF}' < $1
grep -wo "[[:alpha:]]\+" < $1 | sort | uniq -cd | awk '{ print  $2  ": " $1 }'
#!/bin/bash

GEO=$(cat S.txt)

for i in $GEO
	do
		SRR1=$(grep -w "$i"  Book1.csv| cut -d ',' -f 2)
		SRR2=$(grep -w "$i"  Book1.csv| cut -d ',' -f 3)
		salmon quant -i gencode_v39_index -l A -1 $SRR1 -2 $SRR2 -o $i
	done

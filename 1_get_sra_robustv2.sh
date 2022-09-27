#!/bin/bash

#activate right env
#conda activate msa

# get SraRunTable.txt from SRA database

#get input data (uniprot ids)
SRA=$(tail -n +2 SraRunTable.txt | cut -d ',' -f 1)

#This is a loop
for i in $SRA
	do
		prefetch $i ## prefetch downloads SRA file
		if [ -f $i.fastq.gz ]
                then
                        echo "$i already converted"
                else
                        echo "(o) Converting SRA entry: $i"
                        #Downlaod SRA entry
                        fastq-dump --gzip --defline-qual '+' $i/$i.SRA
                        echo "(o) Done converting: $i"
	fi
done


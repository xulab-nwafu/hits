#!/bin/bash
# 
# DNA resequencing pipeline in Xu Lab
# Author: Qinhu Wang (wangqinhu@nwafu.edu.cn)
# Copyright (c) Xu Lab, Northwest A&F University
#

if [ $# != 1 ] ; then
	echo "Usage: $0 fastq_directory" 
	echo " e.g.: $0 ~/data/example/dnaseq/fastq"
	exit 1
fi

if [ $1 == "-h" ] ; then
    echo "dnaseq using hits"
    hits -h
    exit 1
fi

if [ $1 == "-v" ] ; then
    echo "dnaseq using hits"
    hits -v
    exit 1
fi

dir_name=`dirname $1`
base_name=`basename $1`

hits -p D -g ~/db/Sclerotinia_sclerotiorum/current/bowtie2/Sclerotinia_sclerotiorum.genome.fa -d $1 -o $dir_name/$base_name.outdir -t 8 1>$dir_name/$base_name.dnaseq_log.txt 2>&1
echo "Job submitted, outputs will be in $dir_name/$base_name.outdir"

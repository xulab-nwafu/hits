#!/bin/bash
# 
# DNA resequencing pipeline in Xu Lab
# Author: Qinhu Wang (wangqinhu@nwafu.edu.cn)
# Copyright (c) Xu Lab, Northwest A&F University
#

if [ $# != 1 ] ; then
	echo "Usage: $0 fastq_directory" 
	echo " e.g.: $0 ~/data/example/rnaseq/fastq"
	exit 1
fi

if [ $1 == "-h" ] ; then
    echo "rnaseq using hits"
    hits -h
    exit 1
fi

if [ $1 == "-v" ] ; then
    echo "rnaseq using hits"
    hits -v
    exit 1
fi

dir_name=`dirname $1`
base_name=`basename $1`

hits -p R -g ~/db/Sclerotinia_sclerotiorum/current/hisat2/Sclerotinia_sclerotiorum.genome.fa -a ~/db/Sclerotinia_sclerotiorum/current/Sclerotinia_sclerotiorum.gene.gtf -s 1 -d $1 -o $dir_name/$base_name.outdir -t 8 1>$dir_name/$base_name.rnaseq_log.txt 2>&1
echo "Job submitted, outputs will be in $dir_name/$base_name.outdir"

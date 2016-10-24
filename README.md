About
-----
The `hits` is an integrated pipeline for DNA resequencing and RNAseq analyses in Xu Lab. It is designed for molecuar biologist with limited bioinformatics skills. Exports can use it but please note that some of the parameters were build-in, your are awared.

N.B.: the scripts `dnaseq` and `rnaseq` are work with the hardware and software settings in Xu Lab,  can be used with minor modification.

HIgh-Throughput Sequencing (hits) pipeline
------------------------------------------
```
hits 0.2.0

Usage:

    hits <option>

    -p  pipeline for DNAseq [D] or RNAseq [R] analysis
    -d  directory that containing FASTQ file(s), .fq/.fastq
    -g  reference genome
    -a  annotation file in GTF format [work with -p R]
    -o  output directory
    -h  help
    -v  version

Examples:

    hits -p D -d fastq_dir -g genome.fa -o output_dir
    hits -p R -d fastq_dir -g genome.fa -a gene.gtf -o output_dir

Reporting Bugs:

    Bug reports can be submitted via the web:
    https://github.com/xulab-nwafu/hits/issues
```

DNA resequencing pipeline
-------------------------
```
Usage: dnaseq fastq_directory
 e.g.: dnaseq ~/data/example/dnaseq/fastq
```

RNAseq pipeline
---------------
```
 Usage: rnaseq fastq_directory
  e.g.: rnaseq ~/data/example/rnaseq/fastq
```

Author
------
Qinhu Wang (wangqinhu@nwafu.edu.cn)

Copyright
---------
2016 - Xu Lab, Northwest A&F University

License
-------

MIT

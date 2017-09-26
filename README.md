About
-----
The `hits` is an integrated pipeline for DNA resequencing and RNAseq analyses in Xu Lab. It is designed for molecuar biologist with limited bioinformatics skills. Experts can use it but please note that some of the parameters were build-in, your are awared.

N.B.: the scripts `dnaseq` and `rnaseq` are work with the hardware and software settings in Xu Lab,  can be used with minor modification.

HIgh-Throughput Sequencing (hits) pipeline
------------------------------------------
```
hits 0.4.1

Usage:

    hits <option>

    -p  pipeline for DNAseq [D] or RNAseq [R] analysis
    -d  directory that containing FASTQ file(s), .fq/.fastq(.gz)
    -g  reference genome
    -a  annotation file in GTF format [work with -p R]
    -s  strand-specific information [work with -p R]
        1 - stranded [default]
        0 - unstranded
    -o  output directory
    -t  number of alignment threads
    -h  help
    -v  version

Examples:

    hits -p D -d fastq_dir -g genome.fa -o output_dir -t 8
    hits -p R -d fastq_dir -g genome.fa -a gene.gtf -s 1 -o output_dir -t 8

Reporting Bugs:

    Bug reports can be submitted via the web:
    https://github.com/xulab-nwafu/hits/issues
```

DNA resequencing pipeline
-------------------------
- For mapping and variants calling in DNA resequencing, use `dnaseq`
```
Usage: dnaseq fastq_directory
 e.g.: dnaseq ~/data/example/dnaseq/fastq
```
- To compare the differences between two genomes, use `vcfcmp` in https://github.com/xulab-nwafu/filter_vcf
```
Usage: vcfcmp ref.vcf var.vcf
 e.g.: vcfcmp WT.vcf MU.vcf
```

RNAseq pipeline
---------------
- For mapping and counting reads of each gene in RNAseq, use `rnaseq`
```
Usage: rnaseq fastq_directory
 e.g.: rnaseq ~/data/example/rnaseq/fastq
```
- To compare the differences between two RNA samples, use `rnadiff` in https://github.com/xulab-nwafu/rnadiff
```
Usage: rnadiff rnaseq.conf rnaseq.tsv control_tag case_tag
 e.g.: rnadiff demo/rnaseq.conf demo/rnaseq.tsv wt mu
```
- To perform Gene Ontology enrichment analysis, use `goea` (will make public soon)
```
Usage: /home/xulab/bin/goea gene_id.txt
 e.g.: /home/xulab/bin/goea de.up.txt
```

Note
-----
Please note that `dnaseq`, `vcfcmp`, `rnaseq`, and `goea` can only used for _Fusuarium graminearum_ directly.  Other species need to change a bit of source codes.  `rnadiff` could be applied for any species, if you like.

Sclerotinia sclerotiorum
------------------------
- For _Sclerotinia sclerotiorum_, use dnaseq.ss, rnaseq.ss, and vcfcmp.ss, please.
- rnadiff have no genome file specified, can be used directly.

Author
------
Qinhu Wang (wangqinhu@nwafu.edu.cn)

Copyright
---------
2016-2017 (c) Xu Lab, Northwest A&F University

License
-------

MIT

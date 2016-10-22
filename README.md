About
-----
The `hits` is an integrated pipeline for DNA resequencing and RNAseq analyses in Xu Lab. It is designed for molecuar biologist with limited bioinformatics skills. Exports can use it but please note that some of the parameters were build-in, your are awared.


HIgh-Throughput Sequencing (hits) pipeline
------------------------------------------
```

hits 0.1.0

Usage:

    hits <option>

    -p  pipeline for DNAseq[D] or RNAseq [R]
    -d  directory that contains fastq file(s)
    -g  reference genome
    -a  annotation file in GTF format
    -o  output directory
    -h  help
    -v  version

Example:

    hits -p D -d fastq_dir -g genome.fa -o output_dir

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

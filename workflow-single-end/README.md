Variant calling worklow (Snakemake) documentation

Authors: Chiara Bortoluzzi, Christian de Guttry, Robert Waterhouse

Institution: SIB Swiss Institute of Bioinformatics


What is this variant calling worklow?

This pipeline is based on Snakemake and its scope is to estimate population genomics metrics from bi-allelic SNPs.  

1. Inputs

The user must modify the config.yaml file to provide all necessary inputs for the pipeline. These inputs are:
- Reference genome in FASTA format. You do not need to index it, because the Snakemake pipeline will do it for you.
- Input TSV file that contains the following information:
    ANIMAL ID: sample name (this could also be the run accession obtained from ENA for that sample)
    R1 READS: absolute path of read 1 (R1)
    R2 READS: absolute path of read 2 (R2). If your dataset is made of single-end reads, write "None" without quotes
    PLATEFORM: name of the sequencing platform used to generate the data (e.g., PACBIO, ONT, ILLUMINA, ...)

The config.yaml file should also be used to modify the parameters for the various programs used in this Snakemake pipeline. 


2. Data processing

The pipeline is made of the following data processing steps:

    FastQC

This rule allows to perform a quality check of the FASTQ reads.

    FastP

This rule trims FASTQ reads. 

    Mapping

Generate an index file for the reference genome.

Align FASTQ reads against the reference genome with bw-mem2, mark duplicates with samblaster, sort and index with samtools.



In the config.yaml file the following programmes are expected to be installed via conda. Otherwise, you are welcome to modify the path to the programmes if you don't want to install them via conda: 
    fastqc v0.12.1
    fastp v1.3.2
    bwa-mem2 v2.3
    samblaster v0.1.26
    samtools v1.23.1
    bamtools v2.5.3
    

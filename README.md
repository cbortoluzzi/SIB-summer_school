# SIB Summer School: Computing genomic essential biodiversity variables

This GitHub repository is meant to collect data, workflows, and information for the Biodiversity Bioinformatics Summer School. 

## Workflow

This GitHub repository contains two Snakemake workflows:
1. workflow-single-end: workflow for single-end FASTQ files
2. workflow-paired-end: workflow for paired-end FASTQ files

Both workflows check the quality of a FASTQ file with FastQC, trim and filter out bad reads with FastP, align trimmed FASTQ files to the reference genome with BWA-MEM2, and assess the quality of the obtained BAM file with bamtools.

All softwares required to run the Snakemake workflows are expected to be installed via conda. These are:
- FastQC v0.12.1
- FastP v1.3.2
- BWA-MEM2 v2.3
- Samblaster v0.1.26
- Samtools v1.23.1
- Bamtools v2.5.3

If any of the required softwares are already installed on your local laptop or cluster, please provide the absolute path to the software via the config.yaml file that you can find in each workflow. 

## Variant calling
The scope of Topic 3 is to have students developing their own workflow on the provided BAM files to call variants. We expect them to use a combination of the following softwares:
- GATK v4.6.2.0
- ANGSD v0.940 (for low coverage data)
- HTSLIB v1.22.1
- VCFTools v0.1.17
- BCFtools v1.23.1

## Paramenters estimation
We expect students to compute the following parameters:
1. Genetic diversity / intraspecific genetic diversity: estimated with measures such as allelic richness, heterozygosity, and nucleotide diversity (π).
2. Genetic differentiation: estimated as the number of genetic units/lineages and the degree of divergence among populations, using measures like FST, GST, or Dest.
3. Inbreeding: estimated from genomic relatedness or identity-by-descent, including metrics such as FIS or runs of homozygosity (FROH).
4. Effective population size (Ne): estimated from genomic data using methods such as linkage-disequilibrium-based Ne or temporal Ne.


For more information: https://docs.google.com/document/d/1B6yNzzKgzFsmBzMr9qTe46oogLnEL8Czf98Uj29X9MA/edit?usp=sharing 


# SIB Summer School: Computing genomic essential biodiversity variables

This GitHub is meant to collect datasets, scripts, and information for the Summer School. 

## Required softwares
We are going to use the pipeline we worked on in the EBV working group (ERGA DAC committee) as a point of reference: EBVs.

Data trimming: 
  Fastp v1.0.1
Sequence alignment:
  BWA-MEM2 v2.3
  Samblaster v0.1.26
  Samtools v1.22.1
  Sambamba v1.0.1
  Bamtools v2.5.3

Variant calling:
  GATK v4.6.2.0 or ANGSD v0.940 (I think one dataset is low-coverage)
  HTSLIB v1.22.1

Variant post-processing:
  VCFTools v0.1.17
  BCFtools

## Paramenters estimation

1. Genetic diversity / intraspecific genetic diversity: estimated with measures such as allelic richness, heterozygosity, and nucleotide diversity (π).
2. Genetic differentiation: estimated as the number of genetic units/lineages and the degree of divergence among populations, using measures like FST, GST, or Dest.
3. Inbreeding: estimated from genomic relatedness or identity-by-descent, including metrics such as FIS or runs of homozygosity (FROH).
4. Effective population size (Ne): estimated from genomic data using methods such as linkage-disequilibrium-based Ne or temporal Ne


For more information: https://docs.google.com/document/d/1B6yNzzKgzFsmBzMr9qTe46oogLnEL8Czf98Uj29X9MA/edit?usp=sharing 


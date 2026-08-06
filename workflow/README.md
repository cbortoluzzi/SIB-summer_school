# Population genomic workflow

We here provide the set of scripts to run the different steps involved in a population genomic workflow. 

### Step 1:
The raw sequencing data in FASTQ format are quality checked with [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc).

### Step 2:
Raw sequencing data are trimmed with FastP ([https://github.com/opengene/fastp]). 

### Step 3:
The reference genome is masked either with RepeatMasker ([https://www.repeatmasker.org/]) (if the species is in the database) or via a combination of RepeatModeler and RepeatMasker. 

### Step 4:
The reference genome is indexed before performing any alignment.

### Step 5:
The raw sequencing data are mapped to the reference genome with bwa-mem2 ([https://github.com/bwa-mem2/bwa-mem2]).

### Step 6 - 7:
Variants are called on an individual and population-basis using GATK ([https://gatk.broadinstitute.org/hc/en-us]).

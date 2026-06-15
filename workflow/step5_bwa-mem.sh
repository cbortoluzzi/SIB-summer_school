#!/bin/bash

#SBATCH --job-name bwa-mem
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --partition cpu
#SBATCH --cpus-per-task 4
#SBATCH --mem 100G
#SBATCH --time 2-24:00:00



if [ $# -ne 4 ]
then
    	echo -e "\nusage: `basename $0` <BioSample> <Read 1 in FASTQ format> <Read 2 in FASTQ format> <reference genome>\n"
      echo -e "DESCRIPTION: This script takes a pair of FASTQ files and outputs an alignment in BAM format\n\n"

      echo -e "INPUT:         <BioSample>                         BioSample (e.g., SAMEA123456)"
      echo -e "               <Read 1 in FASTQ format>            First paired-end run in FASTQ format - this is the one trimmed by fastp"
      echo -e "               <Read 2 in FASTQ format>            Second paired-end run in FASTQ format - this is the one trimmed by fastp"
      echo -e "               <reference genome>                  The masked reference genome in FASTA format\n\n"

      echo -e "OUTPUT:        <A genome alignment in BAM format>\n\n"
	  
	  echo -e "REQUIRES:      Requires BWA-MEM2 (v2.3), samblaster (v0.1.26), sambamba (v1.0.1), samtools (v1.21), and bamtools (v2.5.2) available from PATH\n\n"

      exit
fi


# Load modules
module load bamtools/2.5.2
module load samtools/1.21



ID=$1
fastq_1=$2
fastq_2=$3
reference_genome=$4


prefix=$(basename "$fastq_1" | sed 's/_1.trim.fastq.gz//g')
output=$(dirname $fastq_1)


# Run alignment using bwa-mem2 and mark duplicates with samblaster
../bin/bwa-mem2/bwa-mem2 mem -R "@RG\\tID:$prefix\\tPL:ILLUMINA\\tSM:$ID" -M -T 30 -t 32 $reference_genome $fastq_1 $fastq_2 | samblaster -M | samtools view -Sb -@ 32 > $output/$prefix.trim.aln.bam


# Sort coordinates with sambamba (we go with sambamba because it's faster than samtools
sambamba sort -t 32 --tmpdir /tmp/ -m 10G -o $output/$prefix.trim.aln.sort.bam $output/$prefix.trim.aln.bam


# Index with samtools
samtools index -@ 32 $output/$prefix.trim.aln.sort.bam


# Generate alignment statistics with bamtools
bamtools stats -in $output/$prefix.trim.aln.sort.bam > $output/$prefix.trim.aln.sort.stats


# Remove intermediate files
rm $output/$prefix.trim.aln.bam


echo -e "Done!"

#!/bin/bash -l

#SBATCH --job-name gatk
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --partition cpu
#SBATCH --cpus-per-task 16
#SBATCH --mem 300G
#SBATCH --time 56:00:00


if [ $# -ne 2 ]
then
    	echo -e "\nusage: `basename $0` <Alignment in BAM format> <Reference genome in FASTA format>\n"
      echo -e "DESCRIPTION: This script calls variants from an alignment file in BAM format\n\n"

      echo -e "INPUT:         <Alignment in BAM format>               Alignment file in BAM format obtained from BWA-MEM2"
      echo -e "               <Reference genome in FASTA format>      Masked reference genome in FASTA format\n\n"

      echo -e "OUTPUT:        <A GVCF file>\n\n"

      echo -e "REQUIRES:      Requires gatk (v4.5.0.0) and tabix available from PATH\n\n"

      exit
fi


# Load modules
module load gatk/4.5.0.0
module load tabix


bam=$1
reference_genome=$2

output=$(echo $bam | sed 's/.bam//g')

echo "Runing GATK for" $bam
gatk HaplotypeCaller -I $bam -O $output.g.vcf.gz -R $reference_genome -ERC GVCF -mbq 20 --minimum-mapping-quality 30
tabix -p vcf $output.g.vcf.gz

echo "Done!"

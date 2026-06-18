#!/bin/bash -l

#SBATCH --job-name gatk
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --partition cpu
#SBATCH --cpus-per-task 16
#SBATCH --mem 300G
#SBATCH --time 48:00:00



if [ $# -ne 1 ]
then
    	echo -e "\nusage: `basename $0` <reference genome>\n"
      echo -e "DESCRIPTION: This script merge several HaplotypeCaller GVCF files and output a single VCF file\n\n"

      echo -e "               <reference genome>      A reference genome in FASTA format\n\n"

      echo -e "OUTPUT:        <VCF>       A VCF with called variants\n\n"

      echo -e "REQUIRES:      Requires gatk (v4.5.0.0) and tabix available from PATH\n"
      exit
fi


# Load modules
module load gatk/4.5.0.0
module load tabix


reference_genome=$1


gvcf=$(for f in ../reads/Zymoseptoria_*/WGS/*/*.g.vcf.gz; do echo -n "--variant $f "; done)

# Merge several HaplotypeCaller GVCF files into a single GVCF with appropriate annotations
gatk CombineGVCFs -R $reference_genome $gvcf -O cohort.g.vcf.gz

# Perform joint genotyping on one or more samples pre-called with HaplotypeCaller
gatk GenotypeGVCFs -R $reference_genome -stand-call-conf 30 -V cohort.g.vcf.gz -O variants_gatk_all.vcf.gz

# Index VCF
tabix -p vcf variants_gatk_all.vcf.gz

echo -e "Done!"

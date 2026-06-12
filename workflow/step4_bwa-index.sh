!/bin/bash -l

#!/bin/bash -l

#SBATCH --job-name bwa-index
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --mem 300G
#SBATCH --partition cpu
#SBATCH --cpus-per-task 6
#SBATCH --time 12:00:00



if [ $# -ne 1 ]
then
    	echo -e "\nusage: `basename $0 ` <Reference genome in FASTA format>\n"
        echo -e "DESCRIPTION: This script generates the index file required for genome alignment in BWA-Mem2\n\n"

        echo -e "INPUT:         <reference genome>       The masked reference genome in FASTA format\n\n"

        echo -e "OUTPUT:        <An indexed reference genome>\n\n"

        echo -e "REQUIRES:      Requires BWA-MEM2 (v2.3) available from PATH\n\n"

        exit
fi


reference_genome=$1

echo "Generating index for" $reference_genome
../bin/bwa-mem2/bwa-mem2 index $reference_genome

echo "Done!"


#!/bin/bash -l


#SBATCH --job-name repeatmasker
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --mem 300G
#SBATCH --partition cpu
#SBATCH --cpus-per-task 6
#SBATCH --time 48:00:00



if [ $# -ne 2 ]
then
    	echo -e "\nusage: `basename $0 ` <Reference genome in FASTA format> <Scientific name>\n"
        echo -e "DESCRIPTION: This script masks a reference genome in FASTA format with RepeatMasker\n\n"

        echo -e "INPUT:         <reference genome>      Reference genome in FASTA format"
        echo -e "               <species name>          Species name to use in RepeatMasker (e.g. Bos taurus)\n\n"

        echo -e "OUTPUT:        <A masked reference genome>\n\n"

        echo -e "REQUIRES:      Requires RepeatMasker (v4.2.4) available from PATH\n\n"

        exit
fi


reference_genome=$1
species=$2


# Mask reference genome
echo "Running RepeatMasker on" $species
../bin/RepeatMasker/RepeatMasker -e rmblast -pa 16 -s -species "$species" -a -xsmall -gff $reference_genome
echo "Done!"


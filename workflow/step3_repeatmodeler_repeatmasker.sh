#!/bin/bash -l


#SBATCH --job-name repeatmodeler_and_repeatmasker
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --mem 300G
#SBATCH --partition cpu
#SBATCH --cpus-per-task 6
#SBATCH --time 2-48:00:00



if [ $# -ne 2 ]
then
    	echo -e "\nusage: `basename $0 ` <Reference genome in FASTA format> <Scientific name>\n"
        echo -e "DESCRIPTION: This script masks a reference genome in FASTA format with RepeatModeler and RepeatMasker\n\n"

        echo -e "INPUT:         <reference genome>      Reference genome in FASTA format"
        echo -e "               <species name>          Species name to use in RepeatMasker (e.g. Bos taurus)\n\n"

        echo -e "OUTPUT:        <A masked reference genome>\n\n"

        echo -e "REQUIRES:      Requires RepeatModeler (v2.0.9) and RepeatMasker (v4.2.4) available from PATH\n\n"

        exit
fi

# Load module 
module load perl/5.42.0


reference_genome=$1
species=$2


echo "Running RepeatModeler on" $species
# Build Database
../bin/RepeatModeler-2.0.9/BuildDatabase -name "$species" $reference_genome

# Generate species-specific repeat library
../bin/RepeatModeler-2.0.9/RepeatModeler -database $species -threads 20

# Mask reference genome
../bin/RepeatMasker/RepeatMasker -lib $species-families.fa -s -a -xsmall -gff $reference_genome

echo "Done!"

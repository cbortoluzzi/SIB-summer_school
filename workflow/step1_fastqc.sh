#!/bin/bash -l


#SBATCH --job-name fastqc
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --partition cpu
#SBATCH --cpus-per-task 4
#SBATCH --mem 100G
#SBATCH --time 12:00:00



if [ $# -ne 2 ]
then
    	echo -e "\nusage: `basename $0 `<Read 1 in FASTQ format> <Read 2 in FASTQ format>\n"
      echo -e "DESCRIPTION: This script takes a pair of FASTQ files and outputs a QC report\n\n"

      echo -e "INPUT:         <Read 1 in FASTQ format>       First paired-end run in FASTQ format"
      echo -e "               <Read 2 in FASTQ format>       Second paired-end run in FASTQ format\n\n"

      echo -e "OUTPUT:        <A QC report>\n\n"

      echo -e "REQUIRES:      Requires FastQC (v0.12.1) available from PATH\n\n"

      exit
fi


# Load module
module load fastqc/0.12.1


fastq_1=$1
fastq_2=$2

filename=$(basename "$fastq_1")
dirname=$(dirname "$fastq_1")
output=$(echo $filename | sed 's/_R1.fastq.gz//g' | sed 's/.R1.fastq.gz//g' | sed 's/_1.fastq.gz//g')


echo "Running FASTQC for" $fastq_1 $fastq_2
fastqc $fastq_1 $fastq_2 -o $dirname -t 16 -dir /tmp/

echo "Done!"

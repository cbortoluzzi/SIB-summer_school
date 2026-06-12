#!/bin/bash -l


#SBATCH --job-name fastp
#SBATCH --output my_code_%J.out
#SBATCH --error my_code_%J.err
#SBATCH --partition cpu
#SBATCH --cpus-per-task 4
#SBATCH --mem 300G
#SBATCH --time 48:00:00


if [ $# -ne 2 ]
then
        echo -e "\nusage: `basename $0` <Read 1 FASTQ format> <Read 2 in FASTQ format>\n"
        echo -e "DESCRIPTION: This script takes a pair of fastq files and outputs a QC report\n\n"

        echo -e "INPUT:         <Read 1 in FASTQ format>       First paired-end run in FASTQ format"
        echo -e "               <Read 2 in FASTQ format>       Second paired-end run in FASTQ format\n\n"

        echo -e "OUTPUT:        <Trimmed reads in FASTQ format>\n\n"

        echo -e "REQUIRES:      Requires Fastp (v1.0.1) available from PATH\n\n"

        exit
fi


# Load module
module load fastp/1.0.1


fastq_1=$1
fastq_2=$2


filename=$(basename "$fastq_1")
dirname=$(dirname "$fastq_1")
output=$(echo $filename | sed 's/_R1.fastq.gz//g' | sed 's/.R1.fastq.gz//g' | sed 's/_1.fastq.gz//g')

echo "Running FASTP for" $fastq_1 $fastq_2
fastp -i $fastq_1 -I $fastq_2 -o $dirname/$output\_1.trim.fastq.gz -O $dirname/$output\_2.trim.fastq.gz --detect_adapter_for_pe -q 20 -u 40 -l 30 -n 0  -g -t 16 -h $dirname/$output.fastp.html -j $dirname/$output.fastp.json

echo "Done!"

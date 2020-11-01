#!/bin/bash

# Marta Bogaczynska mgbogaczynska@usfca.edu October 30, 2020

# This is a bash script that will calculate the total number 
# of sequences in the 
# 2020-10-15_ncbi_sars_cov_2_sequences.fasta.gz file and then 
# tally up the number of SARS-CoV-2 sequences from each 
# country and sort the output from largest to smallest.

fastafile=$1

# The number of sequences should be 28843 
echo "This is the number of sequences in the fasta file" 
zcat $fastafile | grep -c "^>"

bioawk -c fastx '{print $comment}' $fastafile | cut -d "|" -f 3 | sort | uniq -c | sort -rn 

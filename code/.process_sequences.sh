#!/bin/bash

# Marta Bogaczynska
# October 21, 2020
# mgbogaczynska@usfca.edu 

# This script will calculate and report out the total number of sequences in the sars covid file and 
# tally up the number of those sequences for each country and will sort this output from largest to 
# smallest. 

if [ $# -eq 0 ]
then 
	echo "To run this script, supply a file"
	exit 1
fi 

$file=$1


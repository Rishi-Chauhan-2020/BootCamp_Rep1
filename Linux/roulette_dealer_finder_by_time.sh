#! /bin/bash

#This script is to analyze the employee schedule to easily find the roulette dealer at a specific time.

#This script shall be placed and run from directory where dealer schedule files are saved
#This script will accept following arguments
#One for the date (four digits)
#One for time (two digits)
#One for accpeting AM or PM
#Syntax example : sh roulette_dealer_finder_by_time.sh 0312 02 PM

#This script will be able to search for schedule if the dealer schedule file names start with the date, example 0310*

#Declaring argument for accepting date in format of four digits. first two digits for month and last two digits for date, example 0310
Date1=$1

#Declaring argument for accepting time in hours in two digits ( in 12 hr format)
TimeAMPM=$2

#Declaring argument for accepting AM or PM in upper case
AMPM=$3

echo "Date=" $Date1
echo "Time=" $TimeAMPM
echo "AM/PM=" $AMPM

cat $Date1* | awk -F ":00:00 " '{print $1, $2, $3}' | awk -F " " '{print $1, $2, $5, $6}' | grep $TimeAMPM | grep $AMPM

#End of script

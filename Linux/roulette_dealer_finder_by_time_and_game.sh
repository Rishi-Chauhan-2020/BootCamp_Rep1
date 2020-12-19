#! /bin/bash

#This script is to analyze in case of future fraud.

#This script shall be placed and run from directory where dealer schedule files are saved
#This script will accept following arguments
#One for the date (four digits)
#One for time (two digits)
#One for accpeting AM or PM
#One for Casino game being played

#Syntax example : $ sh roulette_dealer_finder_by_time_and_game.sh 0310 12 AM 3

#This script will be able to search for schedule if the dealer schedule file names start with the date, example 0310*

#Declaring argument for accepting date in format of four digits. first two digits for month and last two digits for date, example 0310
Date1=$1

#Declaring argument for accepting time in hours in two digits ( in 12 hr format)
Time=$2

#Declaring argument for accepting AM or PM, please use only uppercase
AMPM=$3

#Declaring argument for Casino game : blackjack, roulette, Texas
#enter 1 for Blackjack, 2 for Roulette, 3 for Texas Hold Em


Game=$4 

if [ $Game -eq 1 ]
then
echo "Date=" $Date1
echo "Time=" $Time
echo "AM/PM=" $AMPM
echo "Game Played=" BlackJack
cat $Date1* | awk -F ":00:00 " '{print $1, $2, $3}' | awk -F " " '{print $1, $2, $3, $4}' | grep $Time | grep $AMPM
elif [ $Game -eq 2 ]
then
echo "Date=" $Date1
echo "Time=" $Time
echo "AM/PM=" $AMPM
echo "Game Played=" Roulette
cat $Date1* | awk -F ":00:00 " '{print $1, $2, $3}' | awk -F " " '{print $1, $2, $5, $6}' | grep $Time | grep $AMPM
elif [ $Game -eq 3 ]
then
echo "Date=" $Date1
echo "Time=" $Time
echo "AM/PM=" $AMPM
echo "Game Played=" Texas Hold Em
cat $Date1* | awk -F ":00:00 " '{print $1, $2, $3}' | awk -F " " '{print $1, $2, $7, $8}' | grep $Time | grep $AMPM
else
echo "wrong arguments supplied"
fi

#End of script


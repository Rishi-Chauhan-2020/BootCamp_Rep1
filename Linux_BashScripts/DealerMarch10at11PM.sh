#! /bin/bash

#This script is to find Dealer for Loss on  March 10 at 11 PM
#This script is hardcoded to look for details and require a file named 0310_Dealer_schedule present in same directory

#Four fields that will be output of this script are 
# $1 = Time
# $2 = AM/PM
# $5 = First name of roulette dealer
# $6 = Last name of roulette dealer


grep "11" 0310_Dealer_schedule | grep "PM" | awk -F " " '{print $1, $2, $5, $6}'

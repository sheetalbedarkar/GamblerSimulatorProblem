#!/bin/bash -x
STAKE=100
BET=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 0 ]
then
	message="win"
elif [ $randomCheck -eq 1 ] 
then
	message="lost"
fi

#!/bin/bash -x
STAKE=100
BET=1
amount=0
totalAmount=$STAKE

while [ $totalAmount -le 150 -a $totalAmount -ge 50 ]
do
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq 0 ]
then
	echo "lost"
	amount=$(($amount-1))
	totalAmount=$(($STAKE+$amount))

elif [ $randomCheck -eq 1 ] 
then
	amount=$(($amount+1))
	echo "win"
	totalAmount=$(($STAKE+$amount))
fi
done


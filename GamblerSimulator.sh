#!/bin/bash -x
STAKE=100
BET=1
totalAmountOf20Days=0

for day in {1..20}
do
totalAmount=$STAKE
amount=0
winAmount=0
lostAmount=0

	while [ $totalAmount -lt 150 -a $totalAmount -gt 50 ]
	do
	randomCheck=$((RANDOM%2))

		if [ $randomCheck -eq 0 ]
		then
			message="You Lost"
			amount=$(($amount-1))
			totalAmount=$(($STAKE+$amount))
			lostAmount=$(($lostAmount+1))

		elif [ $randomCheck -eq 1 ] 
		then
			message="You Win"
			amount=$(($amount+1))
			totalAmount=$(($STAKE+$amount))
			winAmount=$(($winAmount+1))
		fi

	done
	echo "You are done for the day. Please come on next day"

	amountOnDay=$(($winAmount-$lostAmount))
	totalAmountOf20Days=$(($totalAmountOf20Days + $amount))

	if [ $totalAmount -eq 150 ]
	then
		echo "You won on day $day by $winAmount"
	elif [ $totalAmount -eq 50 ]
	then 
		echo "You lost on day $day by $lostAmount"
	fi
done

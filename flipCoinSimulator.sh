#!/bin/bash

HEAD=0
TAIL=0
for ((i=1; i<=15; i++))
do
        random1=$((RANDOM%2))
        if (( $random1 == 0 ))
then
        HEAD=$(($HEAD+1))
else
        TAIL=$(($TAIL+1))
fi
done
echo "HEAD :" $HEAD "Time Won"
echo "TAIL :" $TAIL "Time Won"

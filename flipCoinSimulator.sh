#!/bin/bash

HEAD=0
TAIL=0
while true
do
        random1=$((RANDOM%2))
        if (( $random1 == 0 ))
then
        HEAD=$(($HEAD+1))
else
        TAIL=$(($TAIL+1))
fi
        if (( ($HEAD == 21) || ($TAIL == 21) ))
        then
                break
        fi
done
        echo "HEAD :" $HEAD "Time"
        echo "TAIL :" $TAIL "Time"

        if (( ($HEAD == 21) ))
then
        lead=$(($HEAD-$TAIL))
        echo "Lead is :"$lead
        echo "Winner is HEAD :" $HEAD "Time"
else
        lead=$(($TAIL-$HEAD))
        echo "Lead :"$lead
        echo "Winner is TAIL :" $TAIL "Time"
fi

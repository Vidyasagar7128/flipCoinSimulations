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
        if (( ($HEAD == $TAIL) ))
        then
        ran=$((RANDOM%2))
        if (( $ran == 0 ))
then
        HEAD=$(($HEAD+2))
else
        TAIL=$(($TAIL+2))
fi
        echo "Breaked"
        break
        fi
done
        echo "HEAD :"$HEAD
        echo "TAIL :"$TAIL
        if (( $HEAD > $TAIL ))
then
echo "HEAD is Win after Tie :" $HEAD
else
echo "TAIL is Win after Tie :" $TAIL
fi

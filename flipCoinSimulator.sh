#!/bin/bash

HEAD=0
TAIL=0
random=$((RANDOM%2))
if (( $random == 0 ))
then
        echo "HEAD"
else
        echo "TAIL"
fi
echo

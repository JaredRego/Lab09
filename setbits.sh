#!/bin/bash
COUNTER=0
i=$1
while [ $COUNTER -lt 4 ];
do
if((($i>>$COUNTER)  & 1))
then
  gpio write $COUNTER 1;
else
  gpio write $COUNTER 0;
fi
let COUNTER=COUNTER+1
done 


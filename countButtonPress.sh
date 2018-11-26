#!/bin/bash

i=0
pin=$(gpio read 5)

while [ $i -le 15 ]
do
  if [ $pin -eq 0 ]
    then
      ((i++))
      echo $i
      if [ $i -lt 16 ]
      then
        ./setbits.sh $i
      fi
      if [ $i -eq 16 ]
      then
        gpio write 4 1;
        ./setbits.sh 15
        sleep 1      
        gpio write 4 0;
        ./setbits.sh 0
      fi
    fi
  while [ $pin -eq 0 ]
  do 
    pin=$( gpio read 5 )
  done
pin=$( gpio read 5 )
done

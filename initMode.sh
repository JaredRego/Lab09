#!/bin/bash

pins='0 1 2 3 4'

for pins in $pins
do
  gpio mode $pins out;
  gpio write $pins 0;
done

pins2='5'
  gpio mode $pins2 in;
  gpio mode $pins2 up;
  gpio read $pins2;

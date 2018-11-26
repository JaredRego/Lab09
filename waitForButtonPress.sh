#!/bin/bash

pin=$(gpio read 5);

while [1]
do
  pin=$(gpio read 5);
  echo $pin
done

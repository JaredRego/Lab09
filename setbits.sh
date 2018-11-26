#!/bin/bash

i=$1

if (($i &1))
then 
  gpio write 0 1;
fi

if (($i >>1 &1))
then 
  gpio write 1 1;
fi

if (($i >>2 &1))
then 
  gpio write 2 1;
fi

if (($i >>3 &1))
then 
  gpio write 3 1;
fi

gpio write 0 0;
gpio write 1 0;
gpio write 2 0;
gpio write 3 0;




#!/bin/bash
# script to rub down the edges between the body and cylinder
echo "Bash version ${BASH_VERSION}..."
for i in {0..100}
  do
echo 0=150 > /dev/servoblaster
sleep 1.05
echo 0=250 > /dev/servoblaster
sleep 1.05
echo 0=150 > /dev/servoblaster
sleep .05
     echo "Welcome $i times"
 done

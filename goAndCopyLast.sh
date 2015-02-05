#!/bin/bash

rm -r newest/
mkdir newest/
k=1
while [[ $k -le 4 ]]; do
  j=1
  while [[ $j -le 10 ]]; do
    s=1
    while [[ $s -le 1 ]]; do
      pathTo="rb$k/pf$j/s$s"
      DATADIR="$(pwd)/$pathTo"
      ARCHDIR="$(pwd)/newest"
      ls -ltr ${DATADIR} | tail -1 | awk '{ print $NF }' | while read filename
      do
  		cp ${DATADIR}/${filename} ${ARCDIR}/ || {
  		  echo "Failed to move ${DATADIR}/${filename}"
          exit 1
        }
        echo "Copied ${DATADIR}/${filename}"
      done
      (( s++ ))
    done
    (( j++ ))
  done
  (( k++ ))
done
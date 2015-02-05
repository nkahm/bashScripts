#!/bin/bash

DATADIR="/Users/damascus/Documents/work/tetra" #has to start with /, don't ask me why!
ARCDIR="/Users/damascus/Documents/work/tetra/newFiles/"

ls -ltr ${DATADIR} | tail -2 | awk '{ print $NF }' | while read filename
do
  cp ${DATADIR}/${filename} ${ARCDIR}/ || {
    echo "Failed to move ${DATADIR}/${filename}"
    exit 1
  }
  echo "Moved ${DATADIR}/${filename}"
done

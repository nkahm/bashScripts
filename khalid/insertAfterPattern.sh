#!/bin/bash
Files=`pwd`
for f in $Files/P4N*
do
	sed -i '/^$/d' $f
	sed -i 's/sphinx 1.20572 1/S1/g' $f
	sed -i 's/sphinx 0.904779 0.6/S2/g' $f
	sed -i '/boxMatrix */G' $f
	sed -i 's/^$/def S1 "sphinx 1.20572 1" \n def S2 "sphinx 0.904779 0.6"/' $f
	echo "Replacing file $f"
done

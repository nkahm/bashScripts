l=2
#loop over number of layers
while [[ $l -le 12 ]];
do
  cd ../bumpy/l$i/p1
  python generateInputDAT.py > input.dat
  cd ../../../scripts/
  (( l++ ))
done

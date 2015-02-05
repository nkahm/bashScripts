l=3
#loop over number of layers
while [[ $l -le 4 ]]; do
 
  cd ../bumpy_back/l$l
  p=1
  while [[ $p -le 20 ]]; do
    cd p$p/
    cp incsim.c ../../../bumpy/l$l/p$p/.
    cd ..
    (( p++ ))
  done
  cd ..
  (( l++ ))
done
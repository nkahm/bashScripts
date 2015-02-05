l=4
#loop over number of layers
while [[ $l -le 4 ]]; do
 
  cd ../bumpy/l$l
  p=1
  while [[ $p -le 20 ]]; do
    cd p$p/
    #cp incsim.c ../../../bumpy_back/l$l/p$p/.
    #cp Makefile ../../../bumpy_back/l$l/p$p/.
    #sed -e 's/bumpy/bumpy_back/g' run.job > ../../../bumpy_back/l$l/p$p/run.job
    #cp ../../../bumpy_back/files/app_l$l.dat ../../../bumpy_back/l$l/p$p/input.dat
    cp therm_p$p.end.50 input.dat
    cd ..
    (( p++ ))
  done
  cd ..
  (( l++ ))
done

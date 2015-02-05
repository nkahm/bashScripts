l=4
#loop over number of layers
while [[ $l -le 5 ]]; do
  p=1
  cd l$l/
  while [[ $p -le 20 ]]; do
    cd p$p/
    sed '1,250d' 328_therm_p$p.log > ../mean_p$p.dat
    cd ..
    ((p++))
  done
  cd ..
  ((l++))
done
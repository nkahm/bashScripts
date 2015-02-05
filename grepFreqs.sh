l=1
while [[ $l -le 20 ]]; do
  grep freqs InverR'$l'.out > bands'$l'.dat  
  (( l++ ))
done



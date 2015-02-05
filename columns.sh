i=1
while [[ $i -le 5 ]]; do
   f=$(echo 10*$i+20 | bc)
   j=1
   while [[ $j -le 10 ]]
      l=$(echo $y*$j+$x | bc)
      scp damascus@nyx-login.engin.umich.edu:/home/damascus/rounded/seed/n20000/s$f/p$j/log* logS$f.pf$l.dat
      awk '{print $1,$3}' logS$f.pf$l.dat > deltaS'f'pf'j'.dat
      (( j++ ))
   done
   (( i++ ))
done

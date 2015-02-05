l=1
while [[ $l -le 20 ]]; do
  p=$(echo 0.017*"l(2*$l*$l*$l)" | bc -l)
  pf=${p:0:5}
  scp damascus@nyx-login.engin.umich.edu:/home/damascus/1_MC/1_tetrahedra/1_layers/l4/forw328/pf$l/log_l4_n328_pf$pf.dat log_pf$pf.dat
  awk '{print $3}' log_pf$pf.dat > All_logs_$pf.dat
  rm log*
  (( l++ ))
done


# i=1
# while [[ $i -le 5 ]]; do
#    f=$(echo 10*$i+20 | bc)
#    j=1
#    while [[ $j -le 10 ]]
#       l=$(echo $y*$j+$x | bc)
#       scp damascus@nyx-login.engin.umich.edu:/home/damascus/rounded/seed/n20000/s$f/p$j/log* logS$f.pf$l.dat
#       awk '{print $1,$3}' logS$f.pf$l.dat > deltaS'f'pf'j'.dat
#       (( j++ ))
#    done
#    (( i++ ))
# done

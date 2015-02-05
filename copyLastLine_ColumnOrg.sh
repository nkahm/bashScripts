rm averages*
j=1
while [[ $j -le 10 ]]; do
  z=1
  while [[ $z -le 10 ]]; do
    cd pf$j/seed$z/
    lastLine=`tail -1 log_*` #copy last 1 line of file 
    echo pf$j.s$z $lastLine >> ../../averages$j.dat
    cd ../../
    (( z++ ))
  done
(( j++ ))
done

j=1
while [[ $j -le 10 ]]; do
  x=averages$j.dat 
  colm=$colm' '$x  #create variable with name of all files
(( j++ ))
done

paste $colm > aver.dat #join all the files as new columns
rm averages*
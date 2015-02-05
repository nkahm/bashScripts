 p=1
 while [[ $p -le 20 ]]; do
    cp input_1000.dat p$p/input.dat
 ((p++))
 done

for ID in 9 16 21 24 25 26 27 30 31 32 33 37 40 42 43 48 50 55 56 57 58 61 63 66 73 74 75 77 79 80 81 84 86 87 88 89 93 94 96 99 109 110 112 113 114 115 116 118 125 127 128 132 133 136 138 139 141 142 143;
do
  mkdir shape$ID/
  mkdir shape$ID/log
  mkdir shape$ID/xml
  mkdir shape$ID/bin
  pf=45;
  for phi in 20944 235619 261799 287979 314159;
  do
    p=4;
    while [[ $p -le 8 ]]; 
     do
       sed -e 's/PHI/'$phi'/g' -e 's/ID/'$ID'/g' -e 's/PPP/'$p'/g' -e 's/PF/'$pf'/g' generic.HOOMD > shape$ID/PMF.Liq.$ID.0.$p.pf.$pf.HOOMD
     (( p++ ))
     done
     pf=$((pf+5));
  done
done



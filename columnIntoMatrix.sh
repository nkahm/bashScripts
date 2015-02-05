i=1
nLines=100
while [[ $i -le $nLines ]]; do
  j=$(echo $i+9 | bc)
  sed -n $i,$j'p' data.dat >> temp
  awk 'END {print line} { line = line " " $0 }' temp >> Matrix.dat
  rm temp
  ((i=i+10))
done

awk -v OFS="\t" '{printf "%.3f %.3f %.3f", $1*0.001, $2*0.001, $3}' input.dat 

i=0
while [[ $i -le 9 ]]; do
	j=1
	while [[ $j -le 10 ]]; do
	  line=$(echo $i*10+$j | bc)
	  x='awk 'NR==$line' data.dat'
	  echo $(echo $i+1 | bc) $j $($x) >> out.dat
	 ((j++))
	done
	echo -e "" >> out.dat
((i++))
done

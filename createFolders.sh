#make 20 folders named p* 
#and copy the files from the folde 'files' 
#to each one of them

d=1
while [[ $d -le 20 ]]; do
	mkdir f$d/
	cp files/* f$d/.
	(( d++ ))
done

#this script creates 11 folders named r# 
#inside the folder "bumpy" and copy
#the files to them

l=1
#loop over number of layers
while [[ $l -le 20 ]]; do
  mkdir p$l/
  cp files/* p$l/.
  sed -e 's/folder/p'$l'/g' files/run.job > p$l/run.job
  sed -e 's/press = changeP/opress = '0.05*$p'/g' files/incsim.c > p$l/incsim.c
  (( l++ ))
done
z=$(($x + $y))


i=0
f=19
maxL=8009
while [[ $i -le $f ]]; do
  sed -n ''$maxL*$i + 1','$maxL*($i+1)'' freqsInv.dat >> freqInv$i.dat
  ((i++))
done
x=${i}p
# #Copy in blocks of 62, each block to a file
# i=0
# f=10
# while [[ $i -le $f ]]; do
#   sed -n ''62*$i + 1','62*($i+1)'' freqsInv.dat >> freqInv$i.dat
#   ((i++))
# done

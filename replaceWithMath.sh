#this script creates 11 folders named r# 
#inside the folder "bumpy" and copy
#the files to them

l=1
i=0.05
#loop over number of layers
while [[ $l -le 20 ]]; do
  k=$(echo $l*$i | bc)
  sed -e 's/(define-param r 0)/(define-param r 0'$k')/g' -e 's/(define r_end 0)/(define r_end 0'$k')/g' stephInverseR0.ctl > stephInverseR$l.ctl
  (( l++ ))
done

############################
# #!/bin/bash #doens't work for decimal! need to use |bc
# x=8     # initialize x to 8
# y=4     # initialize y to 4
# # now we assign the sum of x and y to z:
# z=$(($x + $y))
# echo "The sum of $x + $y is $z"
#############################

##############################
# t=$(echo $timestep*$i | bc) ##works!!
##############################

# ###########################
# #this script creates 11 folders named r# 
# #inside the folder "bumpy" and copy
# #the files to them
# 
# l=1
# #loop over number of layers
# while [[ $l -le 20 ]]; do
#   sed -e 's/RX/R'$l'/g' job.x > job$l.x
#   (( l++ ))
# done
# ###########################
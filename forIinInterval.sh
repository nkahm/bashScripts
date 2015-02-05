for i in {01..20..1}
  do
    j = 1
    sed -e 's/pressure/press = '$i'/g' -e 's/LAYERS    1/LAYERS    1/g' ../files/incsim.c > p$j/incsim.c
    (( j++ ))
 done

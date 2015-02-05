j=1
for i in {1050..1050..10}
  do
    sed -e 's/NAME/tetra.'$i'/g' poly.job > poly$j.job
((j++))
 done


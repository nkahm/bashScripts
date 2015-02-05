i=1
while [[ $i -le 144 ]]; do
  cd rdf10/
  name=output.$i.dat
  #number of lines in file#
  counter=`wc -l $name | awk '{print $1'}`
  if [ "$counter" -gt "2000" ]; then
    sed -n '1,2048p' $name > ../AllRDF/$name
  else
    cd ../rdf5/
    counter=`wc -l $name | awk '{print $1'}`
    if [ "$counter" -gt "2000" ]; then
      sed -n '1,2048p' $name > ../AllRDF/$name
    else
      cd ../rdf2/
      counter=`wc -l $name | awk '{print $1'}`
      if [ "$counter" -gt "2000" ]; then
        sed -n '1,2048p' $name > ../AllRDF/$name
      else
        echo $name
      fi
    fi
  fi
  cd ../
(( i++ ))
done

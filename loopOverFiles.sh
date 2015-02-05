for f in *.xml
do
  echo "box" >> $f.pos
  grep "box lx" $f | cut -d"\"" -f2,2 | xargs -I{} echo "{}" >> $f.pos
  grep "box lx" $f | cut -d"\"" -f2,2 | xargs -I{} echo "{}" >> $f.pos
  grep "box lx" $f | cut -d"\"" -f2,2 | xargs -I{} echo "{}" >> $f.pos
  echo shape \"sphere 1 ff00ff00\" >> $f.pos
  sed -n '6,10005p' $f >> $f.pos
done

awk '$NF=gensub(/(........)/,"\\1 ","g",$NF)' allPF$s.dat > allPF$s.c1.dat


for i in *.txt; do mv $i ${i%%.txt}.html; done

# Should use as follow:
# < this script > <begin loop> <end loop> <folder> <pattern of log>
for x in {$1..$2}; do 
  cd $3$x/; 
  find . -name "$4" -print0 | xargs -0 rm; 
  find . -name "$5" -print0 | xargs -0 rm; 
done

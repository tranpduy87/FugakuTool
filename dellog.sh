# Should use as follow:
# < this script > <begin loop> <end loop> <folder> <pattern of log>
for x in {$1..$2}; do 
  cd $3$x/; 
  find . -name "*err*" -print0 | xargs -0 rm; 
  find . -name "*out*" -print0 | xargs -0 rm; 
done

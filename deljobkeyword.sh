# <this script> <job keyword>
for x in `pjstat | grep $1 | awk '{printf  substr($1,0) "\n"}'`; do
    pjdel $x;
done


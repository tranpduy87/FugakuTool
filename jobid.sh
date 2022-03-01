pjstat | grep -v pjsub | grep $1 | awk '{printf  substr($2,4) "\n"}'

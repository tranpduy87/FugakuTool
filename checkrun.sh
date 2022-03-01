for x in "."; do
	for y in {1..48} {51..1000}; do
		#tput setaf 1; echo "INFO for $x/trial$y : "
		chk=0
		for z in {1..100}; do
			if [ ! -f $x/trial$y/step7_$z.gro ]; then
				tput setaf 7; echo "file $x/trial$y/step7_$z.gro not finished yet! "
				chk=1
				break
			fi
		done
		if [ $chk -eq 0 ]; then
			tput setaf 7;echo "All finished"
		fi
	done
done

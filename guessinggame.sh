function check(){
	while :
	do
		echo "Guess, how many files contains this directory"
	read res
	nfiles=$(ls -1q * | wc -l)

	if [[ res -gt nfiles ]]
	then
		echo "Too many"
	elif [[ res -eq nfiles ]]
	then
		right
	else
		echo "Too low" 
	fi
	done
}

function right(){
	echo "Congratulations! You guess"
	exit 0
}

check

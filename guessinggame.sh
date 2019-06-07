
let numfiles="$(ls -l|wc -l)"
echo "Guess number of files"

function guess {
	read inp
	val='^[0-9]+$'

	while [[ $inp != $numfiles ]]
	do
		echo "Your guess was $inp"
		if ! [[ $inp =~ $val ]]
		then
			echo "Please enter integer input only!"
			read inp
		elif [[ $inp -gt $numfiles ]]
		then
			echo "Too high!"
			read inp
		elif [[ $inp -lt $numfiles ]]
		then
			echo "Too low!"
			read inp
		
		fi
	done

	if [[ $inp -eq $numfiles ]]
	then
		echo "Right guess!"


	fi
}

guess

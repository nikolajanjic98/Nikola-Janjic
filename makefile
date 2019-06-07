
readme.md : guessinggame.sh
	echo "The title is guessing game" > readme.md
	echo "make file run on:" >> readme.md
	date >> readme.md		
	echo "Number of lines:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

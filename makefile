Readme.md:
	touch Readme.txt

Readme.txt: guessinggame.sh 
	echo "Guessing Game" > Readme.txt
	date >> Readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> Readme.txt

  

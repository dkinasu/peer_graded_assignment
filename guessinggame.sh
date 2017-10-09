#!/bin/bash
# file: guessinggame.sh

function guessinggame {

	echo "How many files are there in the current directory?"
	echo "Please guess by entering a number"
	read num

	sum=$(ls -p | grep -v / | wc -l)

	while [[ $sum -ne $num ]]
	do
		if [[ $sum -gt $num ]]
		then
			echo "Your guess is too low!"
		else
			echo "Your guess is too high!"
		fi
		echo "Please guess again by entering a number"
		read num
	done

	echo "Congratulations! You guessed it!"
}

guessinggame

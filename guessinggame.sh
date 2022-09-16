#!/usr/bin/env bash
# File: guessinggame.sh

file_count=$(ls -l | wc -l) 


function match () {
    echo "guess how many files are in the current directory"
    read guess
    if [[ "$guess" -eq "$file_count" ]]
    then 
    echo "that is the correct guess!"
    fi

    while [ "$guess" -ne "$file_count" ] 
    do
    echo "incorrect, please guess again..."
    read guess
        if [[ "$guess" -gt "$file_count" ]]
        then
        echo "you entered $guess... that is too high"
   
        elif  [[ "$guess" -lt "$file_count" ]]
        then 
        echo "you entered $guess... a number that is too low"

        else
        echo "that is the correct number of files... congratulations!"
        fi
    done
}

match


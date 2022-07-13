#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#READ IN USER INPUT FOR USERNAME
echo "Enter your username:"
read USRNM


USRNMLST=($($PSQL "SELECT username FROM users;"))
USRNMF="$(echo $USRNM | sed 's/ *$//')" 

#CHECK IF USERNAME EXISTS. IF IT DOESN'T IT IS ADDED TO THE USERS TABLE
if [[ ${USRNMLST[*]} =~ $USRNM ]]
  then
    GAMSPLAYD=$($PSQL "SELECT COUNT(*) FROM games WHERE username = '$USRNM';")
    BESTGAM=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE username = '$USRNM';")

    echo "Welcome back, $USRNMF! You have played $GAMSPLAYD games, and your best game took $BESTGAM guesses."
else 
    INSERT=$($PSQL "INSERT INTO users(username) VALUES('$USRNMF');")
    echo "Welcome, $USRNMF! It looks like this is your first time here."
fi

#GENERATE RANDOM NUMBER BETWEEN 1 and 1000
RNDNUM=$(( $RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"
read GUESS
COUNT=1

#CHECK IF USER GUESSED THE RANDOM NUMBER
if [[ $GUESS = $RNDNUM ]]
  then
    #ADD USER'S GUESSING GAME TO THE GAMES TABLE
    INSERTGAME=$($PSQL "INSERT INTO games(username,number_of_guesses,random_number) VALUES('$USRNMF',$COUNT,$RNDNUM);")
    echo "You guessed it in $COUNT tries. The secret number was $RNDNUM. Nice job!"
    exit
else 
    until [[ $GUESS -eq $RNDNUM ]]
    do
        #CHECK IF USER'S GUESS IS AN INTGER
        if ! [[ $GUESS =~ ^[0-9]+$ ]]
          then
          echo "That is not an integer, guess again:"
          read GUESS
        #CHECK IF USER'S GUESS IS GREATER THAN THE RANDOM NUMBER
        elif [[ $GUESS -gt $RNDNUM ]]
          then
          echo "It's lower than that, guess again:"
          read GUESS
        #CHECK IF USER'S GUESS IS LESS THAN THE RANDOM NUMBER
        elif [[ $GUESS -lt $RNDNUM ]]
          then
          echo "It's higher than that, guess again:"
          read GUESS
        fi
        ((COUNT++))
    done
    #ADD USER'S GUESSING GAME TO THE GAMES TABLE
    INSERTGAME=$($PSQL "INSERT INTO games(username,number_of_guesses,random_number) VALUES('$USRNMF',$COUNT,$RNDNUM);")
    echo "You guessed it in $COUNT tries. The secret number was $RNDNUM. Nice job!"
    exit
fi

EXIT

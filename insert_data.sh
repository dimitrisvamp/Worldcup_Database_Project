#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo $($PSQL "TRUNCATE TABLE games, teams")
# read the games.csv file using cat and apply a while loop to read row by row
cat games.csv | while IFS=',' read  YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS;
do 
  # skip adding 'winner' into database
  if [[ $WINNER != "winner" ]]
  then
    CHECK_FOR_WINNER=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    #if query is true continue to the next team
    if [[ -n $CHECK_FOR_WINNER ]]
    then
      :
    else
      #insert winner into teams
      INSERT_WINNER_INTO_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
  fi

  # skip adding 'opponent' into database
  if [[ $OPPONENT != "opponent" ]]
  then
    CHECK_FOR_OPPONENT=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    # if query is true continue to the next team
    if [[ -n $CHECK_FOR_OPPONENT ]]
    then
      :
    else
      #insert opponent into teams
      INSERT_OPPONENT_INTO_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
  fi

  # skip adding 'year' into database
  if [[ YEAR != "year" ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # insert into games
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    fi
done
# test the results
echo "$($PSQL "SELECT COUNT(*) FROM teams")"
echo "$($PSQL "SELECT COUNT(*) FROM games")"
# Do not change code above this line. Use the PSQL variable above to query your database.
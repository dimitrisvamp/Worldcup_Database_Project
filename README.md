# World Cup Database Project

## Certification Project
One of the required projects provided by freecodecamp for obtaining certification in Relational Databases.

## Description
In this project ***worldcup*** database is created and filled with data from ***games.txt*** in PostgreSQL
using bash scripting and quering it for useful statistics.

***Worldcup*** is a Relational Database which is consisted of two tables, ***games*** and ***teams***.
For each table specific constraints are required to relate the tables.

## Database Schema
Table ***teams***:
* team_id (SERIAL PRIMARY KEY)
* name (VARCHAR)

Table ***games***:
* game_id (SERIAL PRIMARY KEY)
* year (INT)
* round (VARCHAR)
* winner_id (INT FOREIGN KEY REFERENCES TO team_id)
* opponent_id (INT FOREIGN KEY REFERENCES TO team_id)
* winner_goals (INT)
* opponent_goals (INT)

## How To Run
Run to bash terminal ***./insert_data.sh*** to fill your database with data or 
***./insert_data.sh test*** to fill a testing database. 

Then run ./queries.sh to query the database for useful statistics.


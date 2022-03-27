1.Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'
SELECT matchid, player
FROM goal
WHERE teamid = 'GER';

2.Show id, stadium, team1, team2 for just game 1012
SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012;

3.Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT player, teamid, stadium, mdate
FROM goal
JOIN game ON game.id = goal.matchid
WHERE teamid = 'GER';

4.Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'
SELECT team1, team2, player
FROM game
JOIN goal ON goal.matchid =  game.id
WHERE player LIKE 'Mario%';

5.Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10

# couch_commentator

A new Flutter project.
Scorekeeping App for CS 4750

Meant for keeping score of baseball games in a rather simple factor. No experience needed and format for scorekeeping is up to the individual.

# Dart Files

### main.dart

Main homescreen for the app. Includes logo and buttons to get to history, new game, and how-to play.

### my_globals.dart

File contains all global variables used in the app. Includes the main list that includes the game data.

### couch_gamescreen.dart

Main game screen where user can take score of the game. Has buttons to change current inning and current score. Includes button to get to new_play screen and save_screen.

### couch_history.dart

History screen that contains all the saved games and contents of each game labeled by the user-defined title.

### couch_homelineup.dart

Home lineup screen that allows the user to input the home lineup for the game.

### couch_howto.dart

Simple how-to page brieflys lets user know the purpose of the app and how to use it.

### couch_newgame.dart

Main screen that allows player to create a new game. They input the title of the game as well as the lineups. They must fill out the lineups before moving onto the next page.

### couch_newplay.dart

Main screen for player to input a new play. They must choose which lineup and which player they want for the play and then write a description. By clicking on save, the apps keep track of the player, description, and the current stats about the game like current inning, top or bottom, and number of outs.

### couch_savescreen.dart

Main screen after player finishes game to check the final score of the game and to save it.

### couch_vislineup.dart

Home lineup screen that allows the user to input the visitor lineup for the game.


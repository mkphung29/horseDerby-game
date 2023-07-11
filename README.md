# Multiplication Math Derby

For my Introduction to Computer Science course, I decided to create an educational game called ‘Multiplication Math Derby’ and 
it is designed to help kids test their multiplication tables. 
I chose to create an educational math game because when I was a kid, my parents would have me practice my multiplication 
tables by printing out a blank 12 x 12 chart and have me fill in the numbers. By creating a math game, I wanted to make 
practicing multiplication tables fun and interactive for kids. Thus, I created a horse derby race game to not only help 
kids practice, but to also implement a reward/consequence system and to motivate kids to do well.

The gameplay starts by introducing users to the game and explaining how the game works. Users click the ‘f’ key to start the game. 
After starting the game, the code will generate a random multiplication question for the user to answer. If the user enters the 
correct answer, their jockey (the blue jockey at the top) will move forward. However, if the user enters the incorrect answer, 
the CPU jockeys (in black silhouettes) will move forward instead. If the user answers the correct answers to reach the finish 
line first, they win. If the CPU jockeys reach the finish line before the user, the user loses the game. The user can restart 
the game by clicking the ‘j’ key and play again.

My program only has one class called ‘Jockey’ which is used to create 1 jockey object for the user and 3 more jockey objects for the CPU players. All of them have the same constructors. Other than that, all of my functions are in the main program.

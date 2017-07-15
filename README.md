
```

 /$$$$$$$$ /$$                 /$$$$$$$$                        /$$$$$$$$                 
|__  $$__/|__/                |__  $$__/                       |__  $$__/                 
   | $$    /$$  /$$$$$$$         | $$  /$$$$$$   /$$$$$$$         | $$  /$$$$$$   /$$$$$$ 
   | $$   | $$ /$$_____/         | $$ |____  $$ /$$_____/         | $$ /$$__  $$ /$$__  $$
   | $$   | $$| $$               | $$  /$$$$$$$| $$               | $$| $$  \ $$| $$$$$$$$
   | $$   | $$| $$               | $$ /$$__  $$| $$               | $$| $$  | $$| $$_____/
   | $$   | $$|  $$$$$$$         | $$|  $$$$$$$|  $$$$$$$         | $$|  $$$$$$/|  $$$$$$$
   |__/   |__/ \_______/         |__/ \_______/ \_______/         |__/ \______/  \_______/
 
                                  Tech Test for 8th Light
```                                                                                          
                                                                                        
## What's Going On Here?

I am refactoring an existing Tic Tac Toe game that runs in the command line. I've chosen to use the Ruby version of the challenge, and after testing and refactoring, I'll be implementing some new features. 

## Aims

#### Refactor/Fix Known Issues:
* The game does not gracefully handle bad user input.
* In its current form, it’s supposed to be played at a difficulty level of “hard”, meaning the computer
player cannot be beaten. In reality, however, the computer player can be beaten in certain
situations. This is more like a “medium” difficulty level.
* The game play left a lot to be desired. The user messages are lacking. They’re unclear. It’s
confusing to see the spot that’s selected and the board all on the screen. It’s easy to get lost in what’s happening. It’s weird the way the computer picks its spot without notifying the user.

#### Add New Features:
* Allow the user to choose the game type (human v. human, computer v. computer, human v. computer).
* Allow the user to choose which player goes first.
* Allow the user to choose with what “symbol” the players will mark their selections on the board
(traditionally it’s “X” and “O”).

## Tech I Am Using

* Ruby 
* RSpec- a test framework that I'm syntactically familiar with.
* SimpleCov- so I can get an idea of my test coverage.
* RuboCop- to help keep my code compliant with [the Ruby Community Style Guide](https://github.com/bbatsov/ruby-style-guide).

## My Approach

The first thing that the code base needs is a robust set of tests! Past that, I'm hoping to then extract methods and from those methods, classes.

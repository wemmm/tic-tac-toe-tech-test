
```

 /$$$$$$$$ /$$                 /$$$$$$$$                        /$$$$$$$$                 
|__  $$__/|__/                |__  $$__/                       |__  $$__/                 
   | $$    /$$  /$$$$$$$         | $$  /$$$$$$   /$$$$$$$         | $$  /$$$$$$   /$$$$$$
   | $$   | $$ /$$_____/         | $$ |____  $$ /$$_____/         | $$ /$$__  $$ /$$__  $$
   | $$   | $$| $$               | $$  /$$$$$$$| $$               | $$| $$  \ $$| $$$$$$$$
   | $$   | $$| $$               | $$ /$$__  $$| $$               | $$| $$  | $$| $$_____/
   | $$   | $$|  $$$$$$$         | $$|  $$$$$$$|  $$$$$$$         | $$|  $$$$$$/|  $$$$$$$
   |__/   |__/ \_______/         |__/ \_______/ \_______/         |__/ \______/  \_______/

                                       Tech Test
```                                                                                          
[![Code Climate](https://codeclimate.com/github/wemmm/tic-tac-toe-tech-test/badges/gpa.svg)](https://codeclimate.com/github/wemmm/tic-tac-toe-tech-test)
[![Issue Count](https://codeclimate.com/github/wemmm/tic-tac-toe-tech-test/badges/issue_count.svg)](https://codeclimate.com/github/wemmm/tic-tac-toe-tech-test)
[![Test Coverage](https://codeclimate.com/github/wemmm/tic-tac-toe-tech-test/badges/coverage.svg)](https://codeclimate.com/github/wemmm/tic-tac-toe-tech-test/coverage)

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
* Code Climate- to help me see issues with the code and get a GPA score for the climate.

## My Approach

I've started out with some tests for the existing code to help me get my head around how it's working. The majority of the logic is being pulled into the start_game method, so my next step will be to refactor the internal (potentially private) methods of the game in a TDD-driven way.

I've extracted Player, ComputerPlayer and Board classes from the original Game class, and refactored some of the longer methods (although they still need further work to adhere to SOLID principles!). Now that the code is a bit more separated and readable, I intend to begin adding some of the new features.

## Next Steps

Properly implement the ability to change the symbols to a user inputted value (methods are already there, but inaccessible). This will probably be part of a proper 'menu' type interface that runs before the game starts, which will also later include the ability to specify player types (human/computer) and which player goes first. 

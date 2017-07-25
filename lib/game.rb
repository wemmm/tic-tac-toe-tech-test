require_relative 'board'
require_relative 'player'
require_relative 'computer_player'

class Game

# Attribute reader added for testing purposes
  attr_reader :board

  def initialize
    @board = Board.new
    @computer_player = ComputerPlayer.new
    @player = Player.new
  end

  def start_game(stdout: $stdout)
    @board.print_board
    stdout.puts "Enter [0-8]:"
    # loop through until the game was won or tied
    until game_is_over(@board.squares) || tie(@board.squares)
      get_human_spot
      if !game_is_over(@board.squares) && !tie(@board.squares)
        eval_board
      end
      @board.print_board
    end
    stdout.puts "Game over"
  end

  def get_human_spot(stdin: $stdin)
    spot = nil
    until spot
      spot = stdin.gets.chomp.to_i
      if @board.squares[spot] != "X" && @board.squares[spot] != "O"
        @board.squares[spot] = @player.marker
      else
        spot = nil
      end
    end
  end

  def eval_board
    spot = nil
    until spot
      if @board.squares[4] == "4"
        spot = 4
        @board.squares[spot] = @computer_player.marker
      else
        spot = get_best_move(@board.squares, @computer_player.marker)
        if @board.squares[spot] != "X" && @board.squares[spot] != "O"
          @board.squares[spot] = @computer_player.marker
        else
          spot = nil
        end
      end
    end
  end

  def get_best_move(board, next_player)
    available_spaces = []
    best_move = nil
    board.each do |space|
      if space != "X" && space != "O"
        available_spaces << space
      end
    end
    available_spaces.each do |space|
      board[space.to_i] = @computer_player.marker
      if game_is_over(board)
        best_move = space.to_i
        board[space.to_i] = space
        return best_move
      else
        board[space.to_i] = @player.marker
        if game_is_over(board)
          best_move = space.to_i
          board[space.to_i] = space
          return best_move
        else
          board[space.to_i] = space
        end
      end
    end
    if best_move
      return best_move
    else
      number = rand(0..available_spaces.count)
      return available_spaces[number].to_i
    end
  end

  def game_is_over(b)

    [b[0], b[1], b[2]].uniq.length == 1 ||
    [b[3], b[4], b[5]].uniq.length == 1 ||
    [b[6], b[7], b[8]].uniq.length == 1 ||
    [b[0], b[3], b[6]].uniq.length == 1 ||
    [b[1], b[4], b[7]].uniq.length == 1 ||
    [b[2], b[5], b[8]].uniq.length == 1 ||
    [b[0], b[4], b[8]].uniq.length == 1 ||
    [b[2], b[4], b[6]].uniq.length == 1
  end

  def tie(b)
    b.all? { |s| s == "X" || s == "O" }
  end

end

# The below is commented out to stop game executing when running tests
# game = Game.new
# game.start_game

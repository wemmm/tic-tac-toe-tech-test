require_relative 'board'

class Game

# Attribute reader added for testing purposes
  attr_reader :board

  def initialize
    @board = Board.new
    @com = "X" # the computer's marker
    @hum = "O" # the user's marker
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
        @board.squares[spot] = @hum
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
        @board.squares[spot] = @com
      else
        spot = get_best_move(@board.squares, @com)
        if @board.squares[spot] != "X" && @board.squares[spot] != "O"
          @board.squares[spot] = @com
        else
          spot = nil
        end
      end
    end
  end

  def get_best_move(board, next_player)
    available_spaces = []
    best_move = nil
    board.each do |s|
      if s != "X" && s != "O"
        available_spaces << s
      end
    end
    available_spaces.each do |as|
      board[as.to_i] = @com
      if game_is_over(board)
        best_move = as.to_i
        board[as.to_i] = as
        return best_move
      else
        board[as.to_i] = @hum
        if game_is_over(board)
          best_move = as.to_i
          board[as.to_i] = as
          return best_move
        else
          board[as.to_i] = as
        end
      end
    end
    if best_move
      return best_move
    else
      n = rand(0..available_spaces.count)
      return available_spaces[n].to_i
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

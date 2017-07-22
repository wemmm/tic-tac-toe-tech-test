class Board

# Attribute reader added for testing purposes
  attr_reader :squares

  def initialize
    @squares = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
  end

  def print_board(stdout: $stdout)
    stdout.puts " #{@squares[0]} | #{@squares[1]} | #{@squares[2]} \n===+===+===\n #{@squares[3]} | #{@squares[4]} | #{@squares[5]} \n===+===+===\n #{@squares[6]} | #{@squares[7]} | #{@squares[8]} \n"
  end
end

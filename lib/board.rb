require_relative 'player'
require_relative 'computer_player'

class Board

# Attribute reader added for testing purposes
  attr_reader :squares, :player, :computer_player

  def initialize
    @squares = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
    @player = Player.new
    @computer_player = ComputerPlayer.new
  end

  def print_board(stdout: $stdout)
    stdout.puts " #{@squares[0]} | #{@squares[1]} | #{@squares[2]} \n===+===+===\n #{@squares[3]} | #{@squares[4]} | #{@squares[5]} \n===+===+===\n #{@squares[6]} | #{@squares[7]} | #{@squares[8]} \n"
  end

  def empty_square(spot)
    @squares[spot] != @player.marker && @squares[spot] != @computer_player.marker
  end
end

require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  subject(:board) { described_class.new }
  subject(:player) { Player.new }

  describe '#initialize' do
    it 'initializes with an array, @squares' do
      expect(board.squares).to be_a(Array)
    end
  end

  describe '#print_board' do
    it 'prints the game board' do
      expect { board.print_board }.to output(" 0 | 1 | 2 \n===+===+===\n 3 | 4 | 5 \n===+===+===\n 6 | 7 | 8 \n").to_stdout
    end
  end

  describe '#empty_square' do
    it 'returns true if a square has no marker' do
      expect(board.empty_square(1)).to eq true
    end

    it 'returns false if a square has a marker' do
      board.squares[0] = player.marker
      expect(board.empty_square(0)).to eq false
    end
  end
end

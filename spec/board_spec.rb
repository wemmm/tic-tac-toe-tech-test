require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

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
end

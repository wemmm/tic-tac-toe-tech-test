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
    end
  end
end

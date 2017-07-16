require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#game_is_over' do
    it 'returns true if three Xs or Os are in a row' do
      expect(game.game_is_over(['X', 'X', 'X'])).to be true
    end

    it 'returns false if three Xs or Os are not in a row' do
      expect(game.game_is_over(['X', 'O', 'X', 'O', 'O', 'X', 'X'])).to be false
    end
  end

  describe '#tie' do
    it 'returns true if the game is tied' do
      expect(game.tie(['X', 'O', 'X'])).to be true
    end

    it 'returns false if the game is not tied' do
      expect(game.tie(['X', 'X', '3'])).to be false
    end
  end
end

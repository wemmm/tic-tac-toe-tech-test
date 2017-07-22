require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new }

  describe '#get_human_spot' do
    it 'adds the player symbol to the game board' do
      allow($stdin).to receive(:gets).and_return("1")
      game.get_human_spot
      expect(game.board[1]).to eq "O"
    end

    it 'does not accept non integer input' do
      allow($stdin).to receive(:gets).and_return("One")
      game.get_human_spot
      expect(game.board[1]).not_to eq "O"
    end
  end

  describe '#eval_board' do
    it 'will place a marker on the centre square if possible' do
      game.eval_board
      expect(game.board[4]).to eq "X"
    end
  end

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

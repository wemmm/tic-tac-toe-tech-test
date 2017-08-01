require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new }

  describe '#initialize' do
    it 'initializes with a marker' do
      expect(player.marker).to eq('O')
    end
  end

  describe '#change_marker' do
    it 'can change its default marker to a user inputted value' do
      player.change_marker('Z')
      expect(player.marker).to eq('Z')
    end
  end
end

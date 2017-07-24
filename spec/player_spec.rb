require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new }

  describe '#initialize' do
    it 'initializes with a marker, @marker' do
      expect(player.marker).to eq("O")
    end
  end
end

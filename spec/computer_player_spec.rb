require_relative '../lib/computer_player'

describe ComputerPlayer do
  subject(:computer_player) { described_class.new }

  describe '#initialize' do
    it 'initializes with a marker' do
      expect(computer_player.marker).to eq("X")
    end
  end
end

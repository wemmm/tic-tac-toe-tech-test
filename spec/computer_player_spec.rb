require_relative '../lib/computer_player'

describe ComputerPlayer do
  subject(:computer_player) { described_class.new }

  describe '#initialize' do
    it 'initializes with a marker' do
      expect(computer_player.marker).to eq("X")
    end
  end

  describe '#change_marker' do
    it 'can change its default marker to a user inputted value' do
      computer_player.change_marker('Y')
      expect(computer_player.marker).to eq('Y')
    end
  end
end

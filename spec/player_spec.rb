require 'player'

describe Player do
    subject(:player) { Player.new("Scott Pilgrim") }
    it 'returns its name' do
        expect(player.name).to eq("Scott Pilgrim")
    end
end
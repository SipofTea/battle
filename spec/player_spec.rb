require 'player'

describe Player do
    subject(:player_1) { Player.new("Scott Pilgrim") }
    subject(:player_2) { Player.new("The World") }
    it 'returns its name' do
        expect(player_1.name).to eq("Scott Pilgrim")
    end
    it 'starts with 60 hp' do
        expect(player_1.hit_points).to eq(60)
    end
    it 'reduces hitpoints by 10 when attacking' do
        player_1.attack(player_2)
        expect(player_2.hit_points).to eq(50)
    end
end
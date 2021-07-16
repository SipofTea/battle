require 'game'
require 'player'

describe Game do
    let(:player) {Player.new("player")}
    it '#attack' do
        subject.attack(player)
        expect(player.hit_points).to eq(50)
    end
end
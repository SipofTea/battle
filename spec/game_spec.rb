require 'game'
require 'player'

describe Game do
  let(:test_player_1) { Player.new('Scott Pilgrim') }
  let(:test_player_2) { Player.new('The World') }
  subject(:game) { Game.new(test_player_1, test_player_2) }

  it 'is initialized with two players' do
    expect(game.player_1.name).to eq('Scott Pilgrim')
    expect(game.player_2.name).to eq('The World')
  end
  it '#attack' do
    game.attack(test_player_1)
    expect(test_player_1.hit_points).to eq(50)
  end
  it '#turn_switch' do
    game.turn_switch
    expect(game.player_turn).to eq(test_player_2)
  end
end

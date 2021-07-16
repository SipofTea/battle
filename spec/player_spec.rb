require 'player'

describe Player do
  subject(:player) { Player.new('Scott Pilgrim') }
  it 'returns its name' do
    expect(player.name).to eq('Scott Pilgrim')
  end
  it 'starts with 60 hp' do
    expect(player.hit_points).to eq(60)
  end
  it 'reduces 10 hitpoints' do
    player.reduce_hitpoints
    expect(player.hit_points).to eq(50)
  end
end

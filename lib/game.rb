class Game
  attr_reader :player_1, :player_2, :player_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_turn = player_1
  end

  def attack(player)
    player.reduce_hitpoints
  end

  def turn_switch
    @player_turn = if @player_turn == @player_1
                     @player_2
                   else
                     @player_1
                   end
  end
end

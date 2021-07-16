def sign_in_and_play
  visit('/')
  fill_in 'player_1',	with: 'Scott Pilgrim'
  fill_in 'player_2',	with: 'The World'
  click_button 'Submit'
end

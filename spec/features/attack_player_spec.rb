feature 'Attack player' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content 'Scott Pilgrim attacked The World!'
  end
  scenario 'player 2 hitpoints are reduced by 10' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content 'The World now has 50 hitpoints!'
  end
end

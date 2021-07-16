feature 'Turn switching' do
  scenario 'on start will assign turn to player 1' do
    sign_in_and_play
    expect(page).to have_content "Scott Pilgrim's turn"
  end
  scenario 'will switch turn to player 2' do
    sign_in_and_play
    click_link 'Attack!'
    click_button 'Next turn'
    expect(page).to have_content "The World's turn"
  end
end

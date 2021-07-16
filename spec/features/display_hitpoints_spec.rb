feature 'Hitpoint display' do
  scenario 'will display hitpoints for player 2' do
    sign_in_and_play

    expect(page).to have_content 'Hitpoints: 60'
  end
end

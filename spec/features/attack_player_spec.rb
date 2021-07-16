feature 'Attack player' do
  context 'attack player 2' do
    before(:each) do
      sign_in_and_play
      click_link 'Attack!'
    end
    scenario 'attack player 2' do
      expect(page).to have_content 'Scott Pilgrim attacked The World!'
    end
    scenario 'player 2 hitpoints are reduced by 10' do
      expect(page).to have_content 'The World now has 50 hitpoints!'
    end
  end

  context 'attack player 1' do
    before(:each) do
      sign_in_and_play
      click_link 'Attack!'
      click_button 'Next turn'
      click_link 'Attack!'
    end
    scenario 'attack player 1' do
      expect(page).to have_content 'The World attacked Scott Pilgrim!'
    end
    scenario 'player 1 hitpoints are reduced by 10' do
      expect(page).to have_content 'Scott Pilgrim now has 50 hitpoints!'
    end
  end
end

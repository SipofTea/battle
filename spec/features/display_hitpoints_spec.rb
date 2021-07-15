
feature 'Hitpoint display' do
    scenario 'will display hitpoints for player 2' do
        visit('/')
        fill_in "player_1",	with: "Scott Pilgrim"
        fill_in "player_2",	with: "The World"
        click_button "Submit"

        expect(page).to have_content "Hitpoints: 10"
    end
end
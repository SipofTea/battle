
feature 'Name display' do
    scenario 'will display names entered' do
        visit('/')
        fill_in "player_1",	with: "Scott Pilgrim"
        fill_in "player_2",	with: "The World"
        click_button "Submit"

        save_and_open_page
        
        expect(page).to have_content "Scott Pilgrim vs. The World" 
    end
end
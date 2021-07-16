feature 'Name display' do
  scenario 'will display names entered' do
    sign_in_and_play

    # save_and_open_page

    expect(page).to have_content 'Scott Pilgrim vs. The World'
  end
end

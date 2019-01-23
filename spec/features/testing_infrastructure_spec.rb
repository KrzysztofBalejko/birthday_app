require './app'

feature 'Testing infrastructure' do
  xscenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  feature 'Testing form for a name input' do
    scenario 'Enter into player one' do
      visit('/')
      player1 = 'player1'
      player2 = 'player2'
      fill_in 'player_one', with: player1
      fill_in 'player_two', with: player2
      click_button 'Submit'
      expect(page).to have_content (player1 + " vs. " + player2)
    end
  end



end

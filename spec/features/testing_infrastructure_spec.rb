require './app'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  feature 'Testing form for a name input' do
    scenario 'Enter into player one' do
      visit('/')
      player1 = double('player1')
      player2 = double('player2')
      fill_in 'player_one', with: player1
      fill_in 'player_two', with: player2
    end
  end



end

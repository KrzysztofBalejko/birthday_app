require './app'

feature 'Testing infrastructure' do
  xscenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  feature 'Testing form for a name input' do
    scenario 'Enter into player one' do
      sign_in_and_play
      expect(page).to have_content (@player1 + " vs. " + @player2)
    end
  end

  feature 'Testing player HP displayed' do
    scenario 'Players should have equal HP' do
      sign_in_and_play
      expect(page).to have_content(@player_1_health)
    end

  end
end

def sign_in_and_play
  visit('/')
  player1 = 'player1'
  player2 = 'player2'
  fill_in 'player_one', with: player1
  fill_in 'player_two', with: player2
  click_button 'Submit'
end

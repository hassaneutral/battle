def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Toby"
  fill_in :player2, with: "Hassan"
  click_button 'Submit'
end

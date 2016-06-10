feature 'lose message' do
  scenario 'player2 loses and recieves message' do
    sign_in_and_play
    19.times do
      click_button("Attack")
      click_button("Switch Turn")
    end
    expect(page).to have_content "Pisces, you have lost the game! :("
  end
end

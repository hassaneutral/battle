feature 'see hitpoints' do

	scenario 'see hitpoints of player 2' do
	  sign_in_and_play
	  expect(page).to have_content "HP: 100"
	end
	
end

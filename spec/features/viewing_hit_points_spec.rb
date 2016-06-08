feature 'see hitpoints' do

	scenario 'see hitpoints of player 2' do
	  visit('/')
	  fill_in :player1, with: "Toby"
	  fill_in :player2, with: "Hassan"
	  click_button 'Submit'
	  expect(page).to have_content "Toby v Hassan (100)"
	end
	
end
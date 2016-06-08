feature 'fill in forms with names' do
	
	scenario 'enter names and they should be displayed below' do
		visit('/')
		fill_in :player1, with: "Toby"
		fill_in :player2, with: "Hassan"
		click_button 'Submit'
		expect(page).to have_content "Toby v Hassan"
	end

end

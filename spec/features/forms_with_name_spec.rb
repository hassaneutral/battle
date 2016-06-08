feature 'fill in forms with names' do
	
	scenario 'enter names and they should be displayed below' do
		sign_in_and_play
		expect(page).to have_content "Toby v Hassan"
	end

end

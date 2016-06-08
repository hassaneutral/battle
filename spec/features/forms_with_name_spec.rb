feature 'fill in forms with names' do
	
	scenario 'enter names and they should be displayed below' do
		visit('/')
		fill_in :name1, with: "Toby"
		fill_in :name2, with: "Hassan"
		click_button 'Submit'
		expect(page).to have_content "Toby v Hassan"
	end

end
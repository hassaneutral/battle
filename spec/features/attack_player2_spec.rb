feature 'attack player 2' do

  scenario 'attacks player 2' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content "Toby attacked Hassan!"
  end

end

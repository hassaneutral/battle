feature 'Reduce hitpoints on attack' do

  scenario 'reduces player 2 hitpoints by 10' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content "Hassan: 90 HP"
  end
end

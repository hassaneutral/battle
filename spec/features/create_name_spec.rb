require 'spec_helper'

describe 'App' do
  it 'allows players to enter their names' do
    visit('/')
    fill_in :player_1, with: 'Hassan'
    fill_in :player_2, with: 'Lukasz'
    click_button 'Submit'
    expect(page).to have_content 'Hassan vs. Lukasz'
  end
end
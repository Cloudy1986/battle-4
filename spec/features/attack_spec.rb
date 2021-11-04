feature 'Attack' do
  
  scenario 'attack player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Mark has attacked Dave'
  end

  scenario 'reduce Player 2 hit points by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Dave - 100 points'
    expect(page).to have_content 'Dave - 90 points'
  end

end

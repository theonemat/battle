feature 'Attacking' do
  scenario 'attacing player 2'do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce hp by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content ' Mittens: 50 HP'
  end

end

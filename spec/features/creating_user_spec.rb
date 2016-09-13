feature 'Creating a user account' do
  scenario 'they fill out the form with valid information' do
    visit signup_path

    fill_in 'user[username]', with: 'bobloblaw'
    fill_in 'user[password]', with: 'themostsecurepassword'
    click_button 'Create User'

    expect(page).to have_content 'Success'
  end
  scenario 'with invalid information, a proper error message should display' do
  	visit signup_path
  	fill_in 'user[username]', with: 'bobloblaw2'
  	click_button 'Create User'

  	expect(page).to have_content 'blank'
  end
end
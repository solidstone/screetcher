feature 'signing in and out' do
	let(:user) do 
  		FactoryGirl.build(:user)
  	end
	scenario 'user fills in correct information' do
		user.save
		visit login_path
		fill_in 'username', with: user.username
    	fill_in 'password', with: user.password
    	click_button 'Login'
    	expect(page).to have_content 'Welcome'
	end

	scenario 'user fills in incorrect information' do
		user.save
		visit login_path
		fill_in 'username', with: user.username
    	fill_in 'password', with: 'do not let me in'
    	click_button 'Login'
    	expect(page).to have_content 'problem'
	end

	scenario 'user logs out' do
		user.save
		visit login_path
		fill_in 'username', with: user.username
    	fill_in 'password', with: user.password
    	click_button 'Login'
		visit root_path
		click_link "Log out"
		expect(page).to have_content 'Sign up'
	end

	scenario 'user logs in from front page' do
	end


end
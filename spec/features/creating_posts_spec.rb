feature 'creating a post' do
	let(:user) do 
  		FactoryGirl.build(:user)
  	end
  	def login_user(user)
  		user.save

		visit login_path
		fill_in 'username', with: user.username
    	fill_in 'password', with: user.password
    	click_button 'Login'
  	end
	scenario 'they are signed in as a user and post' do
		login_user(user)
		fill_in 'post[content]', with: 'Today is a good day.'
		click_button 'SCREETCH!'
		expect(page).to have_content 'Today'
	end
	scenario 'They are not singed in as a user' do
		visit root_path
		expect(page).to_not have_content 'SCREETCH'
	end
	

end
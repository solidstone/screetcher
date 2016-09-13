feature 'viewing a user' do
	let(:user) do 
  		FactoryGirl.create(:user)
  	end
  	let(:post) do
  		FactoryGirl.create(:post, user: user)
  	end
  	def login_user(user)
  		user.save

		visit login_path
		fill_in 'username', with: user.username
    	fill_in 'password', with: user.password
    	click_button 'Login'
  	end
  	scenario 'Visiting a specific user should show posts' do
  		post
  		visit "/users/#{user.id}"
  		expect(page).to have_content post.content


  	end
	scenario 'User should be able to follow other users' do  		
  		user2 = FactoryGirl.create(:user)
  		login_user(user2)
  		post
  		visit "/users/#{user.id}"
  		click_link('Follow')
  		expect(page).to have_content 'Following'

  	end
  	scenario 'User should not be able to follow themselves' do
  		
  	end
  	scenario 'User should be able to favorite post' do
  		
  	end
  	scenario 'User should show follower count' do
  		
  	end
end

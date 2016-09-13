feature 'viewing a user' do
	let(:user) do 
  		FactoryGirl.create(:user)
  	end
  	let(:post) do
  		FactoryGirl.create(:post, user: user)
  	end
  	scenario 'Visiting a specific user should show posts' do
  		post
  		visit "/users/#{user.id}"
  		expect(page).to have_content post.content


  	end
	scenario 'User should be able to follow other users' do
  		
  	end
  	scenario 'User should not be able to follow themselves' do
  		
  	end
  	scenario 'User should be able to favorite post' do
  		
  	end
  	scenario 'User should show follower count' do
  		
  	end
end

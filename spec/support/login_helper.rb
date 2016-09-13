module LoginHelper
  def login_user(user)
	visit login_path
	fill_in 'username', with: user.username
    fill_in 'password', with: user.password
    click_button 'Login'
  end
end

RSpec.configure do |config|
  config.include LoginHelper, :type => :feature
end
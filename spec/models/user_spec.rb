require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do 
  	FactoryGirl.build(:user)
  end

  it "is valid" do
  	expect(user).to be_valid
  end

  it "has special characters in username" do
  	user.username = "fail#me"
  	expect(user).to_not be_valid
  end
end

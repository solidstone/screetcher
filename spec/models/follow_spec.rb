require 'rails_helper'

RSpec.describe Follow, type: :model do
  let(:follow) do 
  	FactoryGirl.build(:follow)
  end
  it "is valid" do
  	expect(follow).to be_valid
  end
  it "should not be valid without user" do
  	follow.user = nil
	expect(follow).to_not be_valid
  end
  it "should not be valid without a user being followed" do
  	follow.followed = nil
  	expect(follow).to_not be_valid
  end
  it "should not allow duplicate follows" do
	follow.save
  	follow2 = FactoryGirl.build(:follow, user: follow.user, followed: follow.followed )
  	expect(follow2).to_not be_valid
  end
end

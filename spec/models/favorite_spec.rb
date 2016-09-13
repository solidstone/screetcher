require 'rails_helper'

RSpec.describe Favorite, type: :model do
	let(:favorite) do 
  		FactoryGirl.build(:favorite)
  	end
  	it "is valid" do
  		expect(favorite).to be_valid
  	end
  	it "should not be valid without user" do
  		favorite.user = nil
  		expect(favorite).not_to be_valid
  	end
  	it "should not be valid without post" do
  		favorite.post = nil
  		expect(favorite).not_to be_valid
  	end
end

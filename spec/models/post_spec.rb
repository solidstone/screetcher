require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) do 
  	FactoryGirl.build(:post)
  end
  it "is valid" do
	expect(post).to be_valid
  end
  it "should not have nil content" do
	post.content = nil
	expect(post).to_not be_valid
  end
end

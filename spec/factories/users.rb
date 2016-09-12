FactoryGirl.define do
  factory :user do
  	sequence(:username){|n| "bobzcars#{n}" }
	password "freeme123"
  end

end

FactoryGirl.define do
  factory :post do |f|
	content "Will you have a look at that"
	f.association :user
  end

end

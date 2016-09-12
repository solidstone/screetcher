FactoryGirl.define do
  factory :follow do |f|
  	f.association :user
  	f.association :followed, factory: :user
  end

end

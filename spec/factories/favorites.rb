FactoryGirl.define do
  factory :favorite do |f|
    f.association :user
    f.association :post
  end

end

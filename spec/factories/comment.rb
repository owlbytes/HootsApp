FactoryGirl.define do
  
  factory :comment do
    sequence(:content) { Faker::Lorem.characters(141) }
  end

end
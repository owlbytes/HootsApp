FactoryGirl.define do
  
  factory :post do
    sequence(:content) { Faker::Lorem.characters(141) }
    image { |n| "image-#{n}.jpg" }

    trait :with_comments do
      after(:create) do |post|
        FactoryGirl.create_list :comments, post: post
      end
    end
  end

end

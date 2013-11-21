FactoryGirl.define do
  
  factory :user do
    sequence(:name) { |n| "User#{n}" }
    email { "#{name}@gmail.com" }
    image { "image-#{name}.jpg" }
    phone_no { "07777777777"}
    password 'password'
    role 'user'

    trait :with_posts do
      after(:create) do |user|
        FactoryGirl.create_list :posts, user: user
      end
    end

  end

  factory :admin do
    role 'admin'
    factory :admin_with_posts, traits: [:with_posts]
  end

end
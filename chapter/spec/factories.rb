FactoryGirl.define do
  factory :relationship do
    follower_id 1
    followed_id 1
  end
  factory :micropost do
    content "Lorem ipsum"
    user_id 1
  end
  factory :user do
    sequence(:name)   { |n| "Person #{n}"}
    sequence(:email)  { |n| "person #{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end
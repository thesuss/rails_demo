FactoryGirl.define do
  factory :comment do
    commenter "MyString"
    email "MyString@email.com"
    body "MyText"
    article nil
  end
end

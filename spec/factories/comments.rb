FactoryGirl.define do
  factory :comment do
    commenter "MyString"
    email "MyString"
    body "MyText"
    article nil
  end
end

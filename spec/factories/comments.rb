# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    article_id 1
    user_id 1
    status 1
    content "MyString"
  end
end

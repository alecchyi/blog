# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title "MyString"
    subtitle "MyString"
    summary "MyString"
    content "MyString"
    status 1
    user_id 1
  end
end

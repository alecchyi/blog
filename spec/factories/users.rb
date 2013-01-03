# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    password "MyString"
    nickname "MyString"
    email "MyString"
    status 1
    site_url "MyString"
    remark "MyString"
    phone ""
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :collectible do
    title "MyString"
    obj_url "MyString"
    description "MyString"
    status 1
  end
end

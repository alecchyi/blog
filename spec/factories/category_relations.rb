# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category_relation do
    obj_id 1
    category_id 1
    status 1
    is_recommended 1
    is_toped 1
    recommended_at "2013-01-01 23:37:09"
    toped_at "2013-01-01 23:37:09"
  end
end

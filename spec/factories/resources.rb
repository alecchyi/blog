# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resource do
    obj_id 1
    obj_type 1
    status 1
    title "MyString"
    summary "MyString"
    attatch_file_name "MyString"
    attatch_file_size 1
    attatch_content_type "MyString"
  end
end

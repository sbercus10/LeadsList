# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :investor do
    name "MyString"
    bio "MyText"
    follower_count 1
    angellist_url "MyString"
    angellist_image_url "MyString"
    location "MyString"
    email_address "MyString"
    phone_number "MyString"
    job_title "MyString"
    company_name "MyString"
    company_url "MyString"
    investment_status "MyString"
  end
end

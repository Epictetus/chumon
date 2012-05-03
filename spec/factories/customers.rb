# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    account_id 1
    customer_name "MyString"
    company_name "MyString"
    location "MyString"
    zip_code "MyString"
    phone "MyString"
    fax "MyString"
  end
end

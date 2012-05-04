# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    account_id 1
    order_code "MyString"
    delivery_place "MyString"
    delivering_at "2012-05-04"
    customer_name "MyString"
    company_name "MyString"
    company_location "MyString"
    company_zip_code "MyString"
    company_phone "MyString"
    company_fax "MyString"
    note "MyString"
  end
end

class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :constmer_location, :customer_name, :customer_zip_code, :delivering_at, :delivery_place, :order_code
end

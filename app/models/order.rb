class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :constmer_location, :customer_name, :customer_zip_code, :delivering_at, :delivery_place, :order_code

  has_many :order_details
  belongs_to :account
  has_many :bills
  has_many :credits
  has_many :deliveries
end

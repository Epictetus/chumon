class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :customer_name, :delivering_at, :delivery_place, :order_code, :note

  has_many :order_details
  belongs_to :account
  has_many :bills
  has_many :credits
  has_many :deliveries

  accepts_nested_attributes_for :order_details
end

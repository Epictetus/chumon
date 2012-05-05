class Customer < ActiveRecord::Base
  attr_accessible :account_id, :company_name, :customer_name, :fax, :location, :phone, :zip_code, :account_attributes

  belongs_to :account

  accepts_nested_attributes_for :account
end

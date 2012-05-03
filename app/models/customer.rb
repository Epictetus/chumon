class Customer < ActiveRecord::Base
  attr_accessible :account_id, :company_name, :customer_name, :fax, :location, :phone, :zip_code

  belongs_to :customer
end

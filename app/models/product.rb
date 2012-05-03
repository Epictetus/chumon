class Product < ActiveRecord::Base
  attr_accessible :name, :serial_number, :unit_price

  has_many :order_details
end

class Product < ActiveRecord::Base
  attr_accessible :name, :serial_number, :unit_price
end

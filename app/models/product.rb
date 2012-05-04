class Product < ActiveRecord::Base
  attr_accessible :name, :type_number, :unit, :unit_price
end

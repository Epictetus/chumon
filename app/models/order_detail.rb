class OrderDetail < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity, :unit_price
end

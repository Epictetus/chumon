class OrderDetail < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity, :unit_price, :product_type_number, :product_unit

  belongs_to :product
  belongs_to :order
end

class OrderDetail < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity, :unit_price, :product_type_number, :product_unit, :product_name

  belongs_to :product
  belongs_to :order

  def subtotal
    product.unit_price.to_i * quantity.to_i
  end
end

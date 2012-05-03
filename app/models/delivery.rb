class Delivery < ActiveRecord::Base
  attr_accessible :delivered_at, :order_id

  belongs_to :order
end

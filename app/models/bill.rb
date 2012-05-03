class Bill < ActiveRecord::Base
  attr_accessible :order_id, :sent_at

  belongs_to :order
end

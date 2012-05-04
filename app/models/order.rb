class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :customer_name, :delivering_at, :delivery_place, :order_code, :note, :order_details_attributes

  has_many :order_details
  belongs_to :account
  has_many :bills
  has_many :credits
  has_many :deliveries

  accepts_nested_attributes_for :order_details

  def total
    order_details.inject(0) do |total, order_detail|
      total += order_detail.subtotal
    end
  end
end

# -*- coding: utf-8 -*-
class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :customer_name, :delivering_at, :delivery_place, :order_code, :note, :order_details_attributes, :ordered_at

  has_many :order_details
  belongs_to :account
  has_many :bills
  has_many :credits
  has_many :deliveries

  accepts_nested_attributes_for :order_details

  scope :query, lambda { |q|
    includes(:order_details)
      .where(<<-SQL, { q:"%#{q}%"})
        orders.order_code like :q
        or orders.delivery_place like :q
        or order_details.product_name like :q
        or order_details.product_type_number like :q
      SQL
  }

  def total
    order_details.inject(0) do |total, order_detail|
      total += order_detail.subtotal
    end
  end

  def self.build_by_current_user(current_user)

    customer = current_user.try(:customer)
    if customer
      self.build_with_order_code(customer_name:customer.customer_name,
                                 company_name:customer.company_name,
                                 company_location:customer.location,
                                 company_zip_code:customer.zip_code,
                                 company_phone:customer.phone,
                                 company_fax:customer.fax)
    else
      self.build_with_order_code
    end
  end

  def self.build_with_order_code(args={ })
    if args[:order_code].to_s.empty?
      args[:order_code] = DateTime.now.strftime('%y%m%d%H%M%S') + '002'
    end
    self.new(args)
  end

  def ordered?
    !!self.ordered_at
  end

  def status
    if ordered?
      '注文済'
    end
  end
end

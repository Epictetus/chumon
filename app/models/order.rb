# -*- coding: utf-8 -*-
class Order < ActiveRecord::Base
  attr_accessible :account_id, :company_fax, :company_location, :company_name, :company_phone, :company_zip_code, :customer_name, :delivering_at, :delivery_place, :order_code, :note, :order_details_attributes, :ordered_at

  has_many :order_details
  belongs_to :account
  has_one :bill
  has_one :credit
  has_one :delivery

  accepts_nested_attributes_for :order_details, :bill, :credit, :delivery

  scope :query, lambda { |q|
    includes(:order_details)
      .where(<<-SQL, { q:"%#{q}%"})
        orders.order_code like :q
        or orders.delivery_place like :q
        or order_details.product_name like :q
        or order_details.product_type_number like :q
      SQL
  }

  scope :billing_orders, lambda {
    where('ordered_at is not null')
  }

  scope :crediting_orders, lambda {
    includes(:bill)
      .where('bills.sent_at is not null')
  }

  scope :delivering_orders, lambda {
    includes(:credit)
      .where('credits.credited_at is not null')
  }

  def total
    order_details.inject(0) do |total, order_detail|
      total += order_detail.subtotal
    end
  end

  def self.new_and_initialize
    new_one = self.new
    customer = new_one.try(:account).try(:customer)
    if customer
      self.new(order_code:build_order_code,
               customer_name:customer.customer_name,
               company_name:customer.company_name,
               company_location:customer.location,
               company_zip_code:customer.zip_code,
               company_phone:customer.phone,
               company_fax:customer.fax)
    else
      self.new(order_code:build_order_code)
    end
  end

  def self.build_order_code(args={ })
    DateTime.now.strftime('%y%m%d%H%M%S') + '002'
  end

  def ordered?
    !!self.ordered_at
  end

  def status
    if delivered?
      '納品済'
    elsif credited?
      '納品中'
    elsif billed?
      'ご入金待ち'
    elsif ordered?
      'ご注文完了'
    else
      'ご注文未完了'
    end
  end

  def status_for_account_manager
    if delivered?
      '納品済'
    elsif credited?
      '未納品'
    elsif billed?
      '未入金'
    elsif ordered?
      '未請求'
    else
      '-'
    end
  end

  alias :old_bill :bill

  def bill
    if old_bill
      old_bill
    else
      Bill.new
    end
  end

  def billed?
    !!bill.try(:sent_at)
  end

  def credited?
    !!credit.try(:credited_at)
  end

  def delivered?
    !!delivery.try(:delivered_at)
  end

end

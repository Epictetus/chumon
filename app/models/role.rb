class Role < ActiveRecord::Base
  attr_accessible :type, :name

  has_many :accounts_roles
  has_many :accounts, through: :accounts_roles

  scope :managers, lambda {
    where('not type in(?)', [Role::RoleCustomer.to_s])
  }

  def customer?
    self.class == Role::RoleCustomer
  end

  def product_manager?
    self.class == Role::ProductManager
  end

  def account_manager?
    self.class == Role::AccountManager
  end

  def delivery_operator?
    self.class == Role::DeliveryOperator
  end

  def administrator?
    self.class == Role::Administrator
  end
end

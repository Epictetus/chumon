class Account < ActiveRecord::Base
  attr_accessible :login, :password

  has_many :orders
  has_one :customer
  has_many :accounts_roles
  has_many :roles, through: :accounts_roles

  def role_customer?
    roles.where(type:Role::RoleCustomer).any?
  end

  def product_manager?
    roles.where(type:Role::ProductManager).any?
  end

  def account_manager?
    roles.where(type:Role::AccountManager).any?
  end

  def delivery_operator?
    roles.where(type:Role::DeliveryOperator).any?
  end

  def administrator?
    roles.where(type:Role::Administrator).any?
  end

end

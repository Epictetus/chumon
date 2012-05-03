class Account < ActiveRecord::Base
  attr_accessible :login, :password

  has_many :orders
  has_one :customer
  has_many :accounts_roles
  has_many :roles, through: :accounts_roles
end

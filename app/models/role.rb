class Role < ActiveRecord::Base
  attr_accessible :type, :name

  has_many :accounts_roles
  has_many :accounts, through: :accounts_roles

  scope :managers, lambda {
    where('not type in(?)', [Role::RoleCustomer.to_s])
  }
end

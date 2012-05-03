class AccountsRole < ActiveRecord::Base
  attr_accessible :account_id, :role_id

  belongs_to :accounts
  belongs_to :roles
end

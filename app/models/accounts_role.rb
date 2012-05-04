class AccountsRole < ActiveRecord::Base
  attr_accessible :account_id, :role_id

  belongs_to :account
  belongs_to :role
end

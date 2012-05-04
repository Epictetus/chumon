class RemoveCustomerZipCodeOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :customer_zip_code
  end

  def down
    add_column :orders, :customer_zip_code, :string
  end
end

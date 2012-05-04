class RemoveConstmerLocationOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :customer_location
  end

  def down
    add_column :orders, :customer_location, :string
  end
end

class AddOrderedAtOrders < ActiveRecord::Migration
  def up
    add_column :orders, :ordered_at, :datetime
  end

  def down
    remove_column :orders, :ordered_at
  end
end

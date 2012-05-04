class RemoveConstmerLocationOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :constmer_location
  end

  def down
    add_column :orders, :constmer_location, :string
  end
end

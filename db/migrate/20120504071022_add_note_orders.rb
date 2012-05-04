class AddNoteOrders < ActiveRecord::Migration
  def up
    add_column :orders, :note, :text
  end

  def down
    remove_column :orders, :note
  end
end

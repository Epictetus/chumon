class AddFieldsOrderDetails < ActiveRecord::Migration
  def up
    add_column :order_details, :product_name, :string
    add_column :order_details, :product_unit, :string
    add_column :order_details, :product_type_number, :string
  end

  def down
    remove_column :order_details, :product_name
    remove_column :order_details, :product_unit
    remove_column :order_details, :product_type_number
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :unit_price
      t.string :serial_number

      t.timestamps
    end
  end
end

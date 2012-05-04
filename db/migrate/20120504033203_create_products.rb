class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :unit
      t.string :type_number
      t.integer :unit_price

      t.timestamps
    end
  end
end

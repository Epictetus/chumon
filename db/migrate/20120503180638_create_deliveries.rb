class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :order_id
      t.datetime :delivered_at

      t.timestamps
    end
  end
end

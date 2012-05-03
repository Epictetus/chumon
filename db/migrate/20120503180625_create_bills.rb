class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :order_id
      t.datetime :sent_at

      t.timestamps
    end
  end
end

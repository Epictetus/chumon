class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :order_id
      t.datetime :credited_at

      t.timestamps
    end
  end
end

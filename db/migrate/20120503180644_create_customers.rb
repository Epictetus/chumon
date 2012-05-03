class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :account_id
      t.string :customer_name
      t.string :company_name
      t.string :location
      t.string :zip_code
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end

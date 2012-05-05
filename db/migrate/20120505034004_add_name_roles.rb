class AddNameRoles < ActiveRecord::Migration
  def up
    add_column :roles, :name, :string
  end

  def down
    remove_column :roles, :name
  end
end

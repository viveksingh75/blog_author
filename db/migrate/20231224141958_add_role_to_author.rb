class AddRoleToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :role, :string
  end
end

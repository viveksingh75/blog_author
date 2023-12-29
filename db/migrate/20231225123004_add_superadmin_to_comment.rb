class AddSuperadminToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :super_admin, :boolean
    add_column :comments, :admin, :boolean
  end
end

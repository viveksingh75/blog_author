class AddMobileToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :contect, :integer
    add_column :authors, :password_digest, :string
    add_column :authors, :email, :string
    add_index :authors, :email, unique: true
  end
end

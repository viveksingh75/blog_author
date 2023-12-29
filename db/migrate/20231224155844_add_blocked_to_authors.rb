class AddBlockedToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :blocked, :boolean
  end
end

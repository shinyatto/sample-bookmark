class AddOwnerIdToBookmark < ActiveRecord::Migration
  def change
    add_column :bookmarks, :owner_id, :integer

    add_index :bookmarks, :owner_id
  end
end

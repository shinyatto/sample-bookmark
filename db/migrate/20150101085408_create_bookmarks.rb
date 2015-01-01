class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.text :created_at
      t.text :updated_at

      t.timestamps null: false
    end
  end
end

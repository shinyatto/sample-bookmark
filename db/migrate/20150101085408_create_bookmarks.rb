class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url,        null: false
      t.text :created_at, null: false
      t.text :updated_at, null: false

      t.timestamps null: false
    end
  end
end

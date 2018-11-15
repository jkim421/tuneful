class CreateUserCollectionAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :user_collection_albums do |t|
      t.integer :user_id, null: false
      t.integer :album_id, null: false
      t.timestamps
    end
    add_index :user_collection_albums, :user_id
    add_index :user_collection_albums, :album_id
  end
end

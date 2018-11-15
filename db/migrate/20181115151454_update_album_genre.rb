class UpdateAlbumGenre < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :genre
    add_column :albums, :genre_id, :integer, null: false
    add_index :albums, :genre_id
  end
end

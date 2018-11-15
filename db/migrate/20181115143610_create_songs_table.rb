class CreateSongsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.integer :artist_id, null: false
      t.string :album_id, null: false
      t.string :title, null: false
      t.integer :track_num, null: false
      t.string :stream_url
      t.timestamps
    end
    add_index :songs, :title
    add_index :songs, :artist_id
    add_index :songs, [:album_id, :track_num], unique: true
    add_index :albums, :artist_id
    add_index :albums, :title
    remove_column :albums, :downloadable
    add_column :albums, :downloadable, :boolean, default: true, inclusion: [true, false]
  end
end

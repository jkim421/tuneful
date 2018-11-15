class CreateAlbumsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :artist_id, null: false
      t.string :title, null: false
      t.string :genre, null: false
      t.datetime :release_date, null: false
      t.string :description
      t.string :cover_url
      t.boolean :downloadable, default: true
      t.timestamps
    end
  end
end

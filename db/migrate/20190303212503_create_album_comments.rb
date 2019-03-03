class CreateAlbumComments < ActiveRecord::Migration[5.2]
  def change
    create_table :album_comments do |t|
      t.integer :user_id, null: false
      t.integer :album_id, null: false
      t.string :body, null: false
      t.timestamps
    end
    add_index :album_comments, :user_id
    add_index :album_comments, :album_id
  end
end

class CreateArtist < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :bio
      t.string :location, null: false
      t.string :picture_url
      t.timestamps
    end
    add_index :artists, :name
  end
end

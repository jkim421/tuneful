class CreateUserFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_follows do |t|
      t.integer :user_id, null: false
      t.integer :artist_id, null: false
      t.timestamps
    end
    add_index :user_follows, :user_id
    add_index :user_follows, :artist_id
  end
end

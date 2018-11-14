class UpdateArtistsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :name
    remove_column :artists, :location
    add_column :artists, :location, :string
    add_column :artists, :name, :string, null: false
    add_index :artists, :name
  end
end

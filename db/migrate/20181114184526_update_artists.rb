class UpdateArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :name
    add_column :artists, :name, :string
    add_index :artists, :name
  end
end

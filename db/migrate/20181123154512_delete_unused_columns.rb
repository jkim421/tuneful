class DeleteUnusedColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :cover_url
    remove_column :artists, :picture_url
    remove_column :songs, :stream_url
  end
end

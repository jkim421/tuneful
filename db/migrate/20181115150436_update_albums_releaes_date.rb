class UpdateAlbumsReleaesDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :release_date
    add_column :albums, :release_date, :datetime
  end
end

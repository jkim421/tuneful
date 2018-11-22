class UpdateReleaseDateRow < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :release_date
    add_column :albums, :release_date, :integer
  end
end

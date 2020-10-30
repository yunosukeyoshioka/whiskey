class AddGenreIdToWhiskey < ActiveRecord::Migration[5.2]
  def change
    add_column :whiskeys, :genre_id, :integer
  end
end

class RemoveWhiskeyIdFromGenre < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :whiskey_id, :integer
  end
end

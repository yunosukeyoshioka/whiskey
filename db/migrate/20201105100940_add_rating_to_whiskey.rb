class AddRatingToWhiskey < ActiveRecord::Migration[5.2]
  def change
    add_column :whiskeys, :rating, :float
  end
end

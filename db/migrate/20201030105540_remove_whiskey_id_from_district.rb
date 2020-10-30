class RemoveWhiskeyIdFromDistrict < ActiveRecord::Migration[5.2]
  def change
    remove_column :districts, :whiskey_id, :integer
  end
end

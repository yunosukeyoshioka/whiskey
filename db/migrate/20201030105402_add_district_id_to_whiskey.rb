class AddDistrictIdToWhiskey < ActiveRecord::Migration[5.2]
  def change
    add_column :whiskeys, :district_id, :integer
  end
end

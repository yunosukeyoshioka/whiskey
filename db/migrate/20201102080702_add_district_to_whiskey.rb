class AddDistrictToWhiskey < ActiveRecord::Migration[5.2]
  def change
    add_reference :whiskeys, :district, foreign_key: true
  end
end

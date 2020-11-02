class AddGenreToWhiskey < ActiveRecord::Migration[5.2]
  def change
    add_reference :whiskeys, :genre, foreign_key: true
  end
end

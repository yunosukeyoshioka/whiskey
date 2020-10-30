class CreateWhiskeys < ActiveRecord::Migration[5.2]
  def change
    create_table :whiskeys do |t|
      t.integer :user_id
      t.string :name
      t.text :body
      t.integer :price
      t.string :image
      t.float :rank

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :location
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :description
      t.float :price
      t.boolean :active

      t.timestamps
    end
  end
end

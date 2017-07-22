class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :category
      t.string :address
      t.float :lat
      t.float :long
      t.float :price

      t.timestamps
    end
  end
end

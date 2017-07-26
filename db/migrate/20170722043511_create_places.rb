# class CreateLocations < ActiveRecord::Migration[5.1]
#   def change
#     create_table :locations do |t|
#       t.string :name
#       t.string :category
#       t.string :address
#       t.float :lat
#       t.float :long
#       t.float :price
#
#       t.timestamps
#     end
#   end
# end

class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :category
      t.string :address
      t.float :lat
      t.float :lng
      t.float :price_per_pax
      t.text :description
      t.integer :duration

      t.timestamps
    end
  end
end

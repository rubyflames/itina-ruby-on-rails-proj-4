class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :lat, :precision=>10, :scale=>6
      t.decimal :lng, :precision=>10, :scale=>6
      t.float :price_pax
      t.integer :duration

      t.timestamps
    end
  end
end

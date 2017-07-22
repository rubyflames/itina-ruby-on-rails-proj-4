class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :location_name
      t.string :user_name
      t.string :start_date
      t.string :end_date
      t.string :duration
      t.string :budget
      t.string :category
      t.string :pax

      t.timestamps
    end
  end
end

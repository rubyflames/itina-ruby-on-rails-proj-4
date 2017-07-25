class CreateJoinTableTripLocation < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Trips, :Locations do |t|
      t.index [:trip_id, :location_id]
      t.index [:location_id, :trip_id]
    end
  end
end
# line 3: potenitally lowercase for :Trips, :Locations

class CreateJoinTableItineraryPlace < ActiveRecord::Migration[5.1]
  def change
    create_join_table :itineraries, :places do |t|
      t.index :itinerary_id
      t.index :place_id
    end
  end
end

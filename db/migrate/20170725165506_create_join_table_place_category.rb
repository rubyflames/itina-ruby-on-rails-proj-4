class CreateJoinTablePlaceCategory < ActiveRecord::Migration[5.1]
  def change
    create_join_table :places, :categories do |t|
      t.index :place_id
      t.index :category_id
    end
  end
end

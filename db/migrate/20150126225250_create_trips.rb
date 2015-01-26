class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.string :avatar
      t.string :length_trip
      t.integer :price_range
      t.boolean :privacy
      t.string :admin

      t.timestamps
    end
  end
end

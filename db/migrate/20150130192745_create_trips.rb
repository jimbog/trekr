class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
	  t.string :name
      t.string :destination
      t.datetime :start_date
      t.datetime :end_date
      t.string :trip_length
      t.boolean :admin
      t.boolean :privacy
      t.integer :price_range
      

      t.timestamps
    end
  end
end

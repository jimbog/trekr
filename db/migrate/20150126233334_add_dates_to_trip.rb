class AddDatesToTrip < ActiveRecord::Migration
  def change
  	add_column :trips, :start_date, :integer
  	add_column :trips, :end_date, :integer
  end
end

class AddCommentsToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :users_id, :integer
    add_column :trips, :trips_id, :integer
  end
end

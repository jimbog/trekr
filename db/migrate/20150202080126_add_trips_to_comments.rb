class AddTripsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :users_id, :integer
    add_column :comments, :trips_id, :integer
  end
end

class AddAvatarToTrips < ActiveRecord::Migration
  def change
  	add_column :trips, :avatar, :string
  end
end

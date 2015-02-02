class AddForeignKeyColumnToActivities < ActiveRecord::Migration
  def change
  	change_table :activities do |t|
  		t.references :trips, index: true 
  	end
  end
end

class AddUserForeignKeyToActivities < ActiveRecord::Migration
  def change
  	change_table :activities do |t|
  		t.references :users, index: true 
  	end
  end
end

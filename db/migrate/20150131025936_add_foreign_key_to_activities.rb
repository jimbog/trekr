class AddForeignKeyToActivities < ActiveRecord::Migration
  def change
	 change_table :activities do |t|
	 	t.references :trip, index: true
	end
  end
end

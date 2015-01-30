class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :category
      t.string :name
      t.string :address
      t.datetime :date_start
      t.datetime :date_end
      t.text :description
      t.float :cost

      t.timestamps
    end
  end
end

class HomeCityAvatar < ActiveRecord::Migration
  def change
  	add_column :users, :home_city, :string
  	add_column :users, :avatar, :string
  end
end

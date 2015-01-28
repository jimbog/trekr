class Trip < ActiveRecord::Base
	validates :name, presence: true
	validates :location, presence: true
	validates :length_trip, presence: true
	validates :price_range, presence: true

end

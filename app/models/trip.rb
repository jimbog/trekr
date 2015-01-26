class Trip < ActiveRecord::Base
	validates :name, presence: true
	validates :location, presence: true
	validates :length_trip, presence: true
end

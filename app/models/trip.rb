class Trip < ActiveRecord::Base
	# validates :name, presence: true
	# validates :location, presence: true
	# validates :length_trip, presence: true
	# validates :price_range, presence: true
	has_and_belongs_to_many :users
end
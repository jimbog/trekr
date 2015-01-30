class Trip < ActiveRecord::Base
  has_and_belongs_to_many :users

	validates :name, presence: true
	validates :destination, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true
	# validates :trip_length, presence: true
	# validates :admin, presence: true
	# validates :privacy, presence: true
	validates :price_range, presence: true

end

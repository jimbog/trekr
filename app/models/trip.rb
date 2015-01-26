class Trip < ActiveRecord::Base
	validates :name, presence: true
	validates :location, presence: true
end

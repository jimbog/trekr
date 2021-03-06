class Activity < ActiveRecord::Base
  belongs_to :trips
  belongs_to :users

	validates :category, presence: true
	validates :name, presence: true
	validates :address, presence: true
	validates :date_start, presence: true
	validates :date_end, presence: true
	validates :description, presence: true
	validates :cost, presence: true


end

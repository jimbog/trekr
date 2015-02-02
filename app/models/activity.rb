class Activity < ActiveRecord::Base
  belongs_to :trip
  has_one :user, through: :trips

	validates :category, presence: true
	validates :name, presence: true
	validates :address, presence: true
	validates :date_start, presence: true
	validates :date_end, presence: true
	validates :description, presence: true
	validates :cost, presence: true


end

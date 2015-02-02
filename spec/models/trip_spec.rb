require 'rails_helper'

RSpec.describe Trip, :type => :model do
  	it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end

  	it "is invalid without a name" do
		trip = FactoryGirl.build(:trip, name: nil)
		expect(trip).to be_invalid
	end

	it "is invalid without a destination" do
		trip = FactoryGirl.build(:trip, destination: nil)
		expect(trip).to be_invalid
	end

	it "is invalid without a start date" do
		trip = FactoryGirl.build(:trip, start_date: nil)
		expect(trip).to be_invalid
	end

	it "is invalid without an end date" do
		trip = FactoryGirl.build(:trip, end_date: nil)
		expect(trip).to be_invalid
	end

	it "is invalid without a trip length" do
		trip = FactoryGirl.build(:trip, trip_length: nil)
		expect(trip).to be_invalid
	end



end

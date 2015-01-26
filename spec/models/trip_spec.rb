require 'rails_helper'

RSpec.describe Trip, :type => :model do
	it "has a valid factory" do
		expect(FactoryGirl.build(:trip)).to be_valid	
	end

	it "is invalid without a name" do 
		trip_name = FactoryGirl.build(:trip, name: nil)
		expect(trip_name).to be_invalid
	end

	it "is invalid without a location" do 
		location = FactoryGirl.build(:trip, location: nil)
		expect(location).to be_invalid
	end

end

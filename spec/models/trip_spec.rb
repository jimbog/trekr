require 'rails_helper'

RSpec.describe Trip, :type => :model do
	it "has a valid factory" do
		expect(FactoryGirl.build(:trip)).to be_valid	
	end

	it "is invalid without a name" do 
		user = FactoryGirl.build(:trip, name: nil)
		expect(user).to be_invalid
	end
end

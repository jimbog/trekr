require 'rails_helper'

RSpec.describe Activity, :type => :model do 

	it "is invalid without a category" do
		activity = FactoryGirl.build(:activity, category: nil)
		expect(activity).to be_invalid
	end


	it "is invalid without a name" do
		activity = FactoryGirl.build(:activity, name: nil)
		expect(activity).to be_invalid
	end


	it "is invalid without an address" do 
		activity = FactoryGirl.build(:activity, address: nil)
		expect(activity).to be_invalid
	end

	it "is invalid without a start date" do 
		activity = FactoryGirl.build(:activity, date_start: nil)
		expect(activity).to be_invalid
	end

	it "is invalid without an end date" do
		activity = FactoryGirl.build(:activity, date_end: nil)
		expect(activity).to be_invalid
	end
	it "is invalid without a description" do
		activity = FactoryGirl.build(:activity, description: nil)
		expect(activity).to be_invalid
	end

	it "is invalid without a cost" do
		activity = FactoryGirl.build(:activity, cost: nil)
		expect(activity).to be_invalid
	end


end
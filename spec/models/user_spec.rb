require 'rails_helper'

RSpec.describe User, :type => :model do
 
  # is invalid without a first name
  # it{expect(subject).to respond_to(:name)}

  # is invalid without a last name
  # it{expect(subject).to be_invalid}

	it "has a valid factory" do
		expect(FactoryGirl.build(:user)).to be_valid
	end
	it "is invalid without a name" do 
		user = FactoryGirl.build(:user, name: nil)
		expect(user).to be_invalid
	end
	it{expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)}

	it "is invalid without an email address" do 
		user = FactoryGirl.build(:user, email: nil)
		expect(user).to be_invalid
	end

	it "is invalid if email isn't formatted properly" do 
		user = FactoryGirl.build(:user, email: "lalala")
		expect(user).to be_invalid
	end

	it "is invalid if a user tries to sign up with an email address that already exists in our database, regardless of capitalization" do 
		FactoryGirl.create(:user, email: "percival@example.com")
		user = FactoryGirl.build(:user, email: "percival@example.com")
		user1 = FactoryGirl.build(:user, email: "PERCIVAL@example.com")
		expect(user).to be_invalid
		expect(user1).to be_invalid
	end

end
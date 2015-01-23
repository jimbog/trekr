require 'rails_helper'

RSpec.describe User, :type => :model do
 
  # is invalid without a first name
  # it{expect(subject).to respond_to(:name)}

  # is invalid without a last name
  # it{expect(subject).to be_invalid}

  # raises an error without a name
  # it{expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)}

  # is invalid without an email address

  # is invalid if email isn't formatted properly

  # is invalid if a user tries to sign up with an email address that already exists
# require 'rails_helper'

# RSpec.describe User, :type => :model do
	it "has a valid factory"
	it "is invalid without a first name"
	it "is invalid without a last name"
	it "returns a user's full name as a string"
	it "is invalid without an email address"
	it "is invalid if email isn't formatted properly"
	it "is invalid if a user tries to sign up with an email address that already exists in our database, regardless of capitalization"
end
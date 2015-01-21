require 'rails_helper'

RSpec.describe User, :type => :model do
  

  # responds to a name
  it{expect(subject).to respond_to(:name)}

  # is invalid without a name
  it{expect(subject).to be_invalid}

  # raises an error without a name
  it{expect{subject.save!}.to raise_error(ActiveRecord::RecordInvalid)}

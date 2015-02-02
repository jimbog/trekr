require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "is invalid without a comment" do
		comment = FactoryGirl.build(:comment, category: nil)
		expect(comment).to be_invalid
end

FactoryGirl.define do
  factory :trip do
    name "Cristiano"
	location "San Francisco"
	avatar "MyString"
	start_date '2015-02-01'
	end_date '2015-02-06'
	length_trip 5
	price_range 1
	privacy false
	admin "MyString"
  end

end

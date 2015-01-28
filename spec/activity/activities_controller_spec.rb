require "rails_helper"

RSpec.describe ActivitiesController, :type => :controller do 
	
	describe "GET #index" do 

		it "responds to successfully with an HTTP 200 status code" do 
			#p response.body
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "assigns @activities" do
			activity = FactoryGirl.create(:activity)
			get :index
			expect(assigns(:activities)).to eq([activity])
		end
	end

	describe "GET #new" do

		it "assigns @activity" do
			activity = FactoryGirl.create(:activity)
			get :new
			expect(assigns(:activity)).to eq([activity])
		end
	end
end

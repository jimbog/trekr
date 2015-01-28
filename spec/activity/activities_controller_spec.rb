require "rails_helper"

RSpec.describe ActivitiesController, :type => :controller do 
	describe "GET #index" do 

		it "responds to successfully with an HTTP 200 status code" do 
			#p response.body
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end
end

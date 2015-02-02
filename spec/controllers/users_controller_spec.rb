require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

 	before { controller.stub(:authenticate_user!).and_return true }
	describe "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
			get :index
			expect(response).to have_http_status(200)
		end
	end  
end

require 'rails_helper'

RSpec.describe ActivitiesController, :type => :controller do
	it 'responds with success' do
      expect(response).to be_success
    end
    it "will get redirected as new" do 
		get :new
		assert_response :redirect
	end
	it "will get redirected at index" do 
		get :index
		assert_response :redirect
	end
	it "will get redirected at create" do 
		get :create
		assert_response :redirect
	end
	
end
require 'rails_helper'

describe "Users API", :type => :request do

  let(:request_headers) { { "Accept" => "application/json", "Content-type" => "application/json" } }
  
  it "returns a list of users" do
    FactoryGirl.create(:user)

    get "api/users"
    users = JSON.parse(response.body)
    # expect(response).to have_http_status 200
    expect(users.count).to eq(1)
  end

  # it "returns a specific user" do
 #      user = FactoryGirl.create(:user)

 #      get "/api/users/#{user.id}"

 #      expect(response).to have_http_status 200
 #      expect(response.body).to eq(user.to_json)
 #    end

 #    it "creates a new user" do
 #      user_attributes = { "user" => FactoryGirl.attributes_for(:user) }.to_json

 #      post "/api/users", user_attributes, request_headers

 #      user = JSON.parse(response.body)
 #      expect(response).to have_http_status 201
 #      expect(response.location).to eq("http://www.example.com/api/users/#{user['id']}")
 #    end

end
module Api

	class TripsController < ApplicationController
			protect_from_forgery with: :null_session
			respond_to :json

      def index
        trips = Trip.all

        respond_with trips
      end

    end
end
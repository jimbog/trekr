class TripsController < ApplicationController
	def index
		@trips = Trip.all
	end

	def show
		@trip = Trip.find(params[:id])
	end

	def new
		@trip = Trip.new
	end


	def create
		@trip = Trip.new(trip_params)
    @trip.users << current_user

		if @trip.save
			redirect_to trips_path
		else
			render :new
		end
	end

	def edit
		@trip = Trip.find(params[:id])
	end

	def update
		@trip = Trip.find(params[:id])

    @friend  = User.find_by(email: params[:friend][:email] )

    if @friend and not @trip.users.include?(@friend)
      @trip.users << @friend
    end

		if @trip.update_attributes(trip_params)

			redirect_to trips_path
		else
			render "edit"
		end
	end

	def destroy
		@trip = Trip.find(params[:id])
		@trip.destroy
		redirect_to trips_path
	end

	private
	def trip_params
		params.require(:trip).permit(:name, :destination, :start_date, :end_date, :trip_length, :admin, :privacy, :price_range, :friend_email, :friend)
	end
end

class TripsController < ApplicationController

	def show
		@trip = Trip.find(params[:id])
	end

	def new
		@trip = Trip.new
	end

	def create
		user = User.find(current_user)
		trip = user.trips.create(trip_params)
		redirect_to user_path(trip.user)
	end

	def edit
		@user = User.find(params[:user_id])
		@trip = @user.trips.find(params[:id])
	end
	

	def update
		@user = User.find(params[:user_id])
		@trip = @user.trips.find(params[:id])
		if @trip.update_attributes(trip_params)
			redirect_to user_path(params[:user_id])
		else
			render :edit
		end
	end

	def destroy
		@user = User.find(params[:user_id])
		@trip = @user.trips.find(params[:id])
		@trip.delete
		redirect_to user_path(params[:user_id])
	end

	private
	def trip_params
		params.require(:trip).permit(:name)
	end
end


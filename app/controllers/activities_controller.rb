class ActivitiesController < ApplicationController

	def index
		@activities = Activity.all
	end

	def show
		@activity = Activity.find(params[:id])
	end

	def new
		@activity = Activity.new
	end


	def create
		@activity = Activity.new(activity_params)
		@user = current_user
		# @activity.users << current_user
		# @trip.activities << @activity


		if @activity.save
			redirect_to activities_path
		else
			render :new
		end
	end

	def edit
		@activity = Activity.find(params[:id])
	end

	def update
		@activity = Activity.find(params[:id])
		if @activity.update_attributes(activity_params)

			redirect_to activities_path
		else
			render "edit"
		end
	end

	def destroy
		@activity = Activity.find(params[:id])
		@activity.destroy
		redirect_to activities_path
	end

	private
	def activity_params
		params.require(:activity).permit(:category, :name, :address, :date_start, :date_end, :description, :cost, :trips_id, :users_id)
	end
end

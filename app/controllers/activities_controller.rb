class ActivitiesController < ApplicationController

	def index
		@activities = Activity.all
	end

	def new
		@activity = Activity.new
	end


	def create
		@activity = Activity.new(activity_params)
		if @activity.save
			redirect_to activities_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def activity_params
		params.require(:activity).permit(:category, :name, :address, :date_start, :date_end, :description, :cost)
	end
end

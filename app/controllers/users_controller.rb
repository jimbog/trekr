class UsersController < ApplicationController


	def index
		
	end

	def show

	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(current_user), :notice => "Thanks for signing up! Get ready and starting TREKR-ing!"
		else
			render :new
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_session_path
		else
			render :edit
		end
	end


	private 

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :home_city, :avatar)
	end
end

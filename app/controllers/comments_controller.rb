class CommentsController < ApplicationController

	# def index
	# 	@comments = Comment.all
	# end

	# def show
	# 	@comment = Comment.find(params[:id])
	# end

	def new
		@comment = Comment.new
	end

	def create
		@trip = Comment.find(params[:trips_id])
		@comment = Comment.create(activity_params)
		@comment.users_id = current_user.id
		@comment.trips_id = @trip.id
	end

	# def create
	# 	@comment = Comment.new(comment_params)
	# 	if @comment.save
	# 		redirect_to comments_path
	# 	else
	# 		render :new
	# 	end

	# end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update_attributes(comment_params)
			redirect_to comments_path
		else
			render "new"
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to comments_path

	end




	private
	def comment_params
		params.require(:comment).permit(:comment)
	end




end

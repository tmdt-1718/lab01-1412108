class PostController < ApplicationController
	before_action :require_login
	def index
		@post = Post.all
	end

	def new_post
		#render plain: params[:photo].inspect
		@post = Post.new(post_params)
		@post.save

		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	private
	def post_params
		params.require(:post).permit(:image, :user, :title, :content, :view)
	end
end

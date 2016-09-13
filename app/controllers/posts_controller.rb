class PostsController < ApplicationController
	def index
		if current_user
			@posts = current_user.posts.order('created_at DESC')
		else
			@posts = Post.order('created_at DESC').all
		end
		@post = Post.new
	end
	def create
		authorize
		@posts = Post.order('created_at DESC').all
		@post = Post.new(post_params)
		@post.user = current_user
		if @post.save
			redirect_to root_path
		else
			render :index
		end
	end
	def post_params
		params.require(:post).permit(:content)
	end
end

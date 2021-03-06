class PostsController < ApplicationController
	def index
		@posts = Post.all	
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		#redirect_to posts_path
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)
		@post.save
		redirect_to root_path
	end


	private def post_params
		params.require(:post).permit(:title, :body)
	end
end

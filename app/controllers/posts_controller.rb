class PostsController < ApplicationController
	def new
     @post = Post.new
  	end
	def create
		#render text: params[:post].inspect
		@post = Post.new(params[:post].permit(:title, :url, :description))
        #@post.save
        #redirect_to @post

  if @post.save
    redirect_to @post
  else
    render 'new'
  end
  	end




  	def show
  		@post = Post.find(params[:id])
	end

	def index
  		@posts = Post.all
	end
    private
    def post_params
    	params.require(:post).permit(:title, :url, :description, :user_id)
    end

    
end

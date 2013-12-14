class PostsController < ApplicationController
	#adaugare post
	def new
	end

	#adaugare metoda post nou
	def create
		  @post = Post.new(post_params)
 			
          @post.save
          redirect_to @post
  	end

  	def show
  		@post = Post.find(params[:id])
    end
    
    def index
 	 	@posts = Post.all
	end

  	private
 		def post_params
    		params.require(:post).permit(:title,:url,:description,:user_id)
  		end

  	
end

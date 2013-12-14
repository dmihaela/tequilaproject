class PostsController < ApplicationController
	# metoda pentru a adauga un nou post
	def new 
	end

	# metoda pentru a crea un nou post(atunci cand apas submit la formular)
	def create
		# render text: params[:post].inspect
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

	# metoda privata trebuie sa fie pusa ultima, altfel toate de sub ea 
	# vor fi private si nu vor mai fi recunoscute
	private
	  def post_params
	    params.require(:post).permit(:title, :url, :description, :user_id)
	  end
end

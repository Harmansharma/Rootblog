class PostsController < ApplicationController
def index

@posts= Post.all
end

def show

@post= Post.find(params[:id]) 

	

end


def new
	@article = Post.new
	@category= Category.all


end


def create 
	   @post = Post.new(post_params)

     
     if @post.save 
     	redirect_to @post 
     else
     	
     	render  :new, status: :unprocessable_entity
     end

end


def edit

	@post= Post.find(params[:id]) 

	
end


def update 
 @article = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end

end


def  destroy

@post= Post.find(params[:id])
@post.destroy
redirect_to posts_path





end


  private
    def post_params
      params.require(:post).permit(:title, :body)
    end


end


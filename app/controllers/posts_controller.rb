class PostsController < ApplicationController
  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 15).order("created_at DESC")
  end
  def new
    @post = Post.new
  end
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Your Post was successfully saved"
      redirect_to posts_path
    else
      flash[:error] = "Something went wrong"
      redirect_to request.referer
    end
  end

  def show
    @post = Post.find(params[:id])
  end
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end

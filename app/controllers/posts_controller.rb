class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.create
  end

  def create
    if @post = Post.create(post_params)
      flash[:success] = "😃 Your pict is now available in InstaLife!"
      redirect_to posts_path
    else
      flash[:alert] = "😢 Oups... something happend wrong, please check the form."
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post updated 👌"
      redirect_to posts_path
    else
      flash[:alert] = "😢 Update failed.  Please check the form."
      render :edit
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "👍 Your post has been deleted."
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

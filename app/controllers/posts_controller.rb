class PostsController < ApplicationController

  def index
    @post = Post.all.order(:created_at)
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create post_params
    redirect_to post
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post
  end

  def show
    @post = Post.find params[:id]
    redirect_to root_path
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to post_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :image)
  end
end

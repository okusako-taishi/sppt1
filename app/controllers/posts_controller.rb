class PostsController < ApplicationController
  # before_action :move_to_index, except: [:search]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def search
    @posts = Post.search(params[:keyword])
    @like = Like.new

  end


  private
  def post_params
    params.require(:post).permit(:title, :link).merge(user_id: current_user.id)
  end
end
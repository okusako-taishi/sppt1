class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    if @like.save
      redirect_back(fallback_location: root_path)
    else
      redirect_to root_path
    end
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
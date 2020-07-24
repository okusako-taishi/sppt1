class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @user_posts = @user.posts
    @liked_posts = @user.liked_posts
    
    # respond_to do |format|
    #   format.html 
    #   format.json { render json: @liked_posts }
    #   format.json { render json: @user_posts }
    # end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end

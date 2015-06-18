class UsersController < ApplicationController
  # for devise
  before_filter :authenticate_user!, only: [:edit, :update]
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes
    @posts = @user.posts
    @comments = @user.comments
    
    if URI(request.referer).path.include?("/posts/")
      render layout: 'forums'
    else
      render layout: 'application'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new(user_params)
    
    if @user.save
       redirect_to current_user
    else
      render 'new'
    end
  end
  
  def crop
    @user = User.find(params[:id])
  end
 
  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
        if params[:user][:avatar].present?
          render :crop
        else
          redirect_to current_user
          flash[:success] = 'Profile was successfully updated'
        end
    else
      render :edit
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name, :username, :location, :profile, :avatar, :crop_x, :crop_y, :crop_w, :crop_h)
    end
end
